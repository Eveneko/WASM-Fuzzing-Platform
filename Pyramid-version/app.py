from waitress import serve
from pyramid.config import Configurator
from pyramid.response import Response
from pyramid.httpexceptions import HTTPBadRequest
from subprocess import Popen, PIPE
from fuzz_response import FuzzResponse, RunResult, VMResult
import mutator.mutator as mutator
import uuid
import shutil
import os

VM_DICT = {'spec-interpreter': './interpreter/wasm',
           'wasmer': './interpreter/wasmer/wasmer run --backend=llvm',
           'wasmtime': './interpreter/wasmtime/wasmtime --invoke=main',
           'wavm': './interpreter/wavm/wavm run --function=main',
           'wasmer-old': './interpreter/wasmer-old/wasmer run --backend=llvm',
          }


def inplace_change(filename):
    with open(filename, 'r') as f:
        s = f.read()
    with open(filename, 'w') as f:
        s = s.replace('get_local', 'local.get')
        s = s.replace('set_local', 'local.set')
        s = s.replace('tee_local', 'local.tee')
        f.write(s)


def run_command(command):
    process = Popen(command.split(' '), stdout=PIPE, stderr=PIPE)
    process.wait()
    if process.returncode != 0:
        print(process.stdout.read().decode())
        print(process.stderr.read().decode())
    return process.returncode, process.stdout.read().decode(), process.stderr.read().decode()


def run_mutation(file_path):
    mutation_path = file_path + '-new.wast'
    ret_code, _, _ = run_command('./interpreter/wasm %s -o %s' % (file_path, mutation_path))
    if ret_code != 0:
        return None
    return mutation_path


def run_insert_useless_code(file_path):
    mutation_path = file_path + '-new.wast'
    mutator.mutation(file_path, mutation_path)
    return mutation_path


def evaluate_wasm(vm_path, file_path):
    return RunResult(*run_command(vm_path + ' ' + file_path))


def evaluate_all_vms(origin_path, mutation_path):
    run_results = {}

    for vm_name, vm_path in VM_DICT.items():
        run_results[vm_name] = VMResult(evaluate_wasm(vm_path, origin_path), evaluate_wasm(vm_path, mutation_path))
        if vm_name == 'spec-interpreter':
            delete_last_line(origin_path)
            delete_last_line(mutation_path)

    return run_results


def delete_last_line(file_path):
    with open(file_path, "r+") as file:
        file.seek(0, os.SEEK_END)
        pos = file.tell() - 1
        while pos > 0 and file.read(1) != "\n":
            pos -= 1
            file.seek(pos, os.SEEK_SET)
        if pos > 0:
            file.seek(pos, os.SEEK_SET)
            file.truncate()


def render_static(request):
    static_file = request.matchdict['static_file']
    if static_file == '':
        static_file = 'index.html'
    file = open('./static/' + static_file, 'rb')
    content = file.read()
    file.close()
    return Response(content)


def upload_file(request):
    _, input_ext = os.path.splitext(request.POST['filename'])
    input_file = request.POST['file'].file
    save_path = os.path.abspath('./tmp/%s.wast' % uuid.uuid4())

    input_file.seek(0)
    with open(save_path, 'wb') as output_file:
        shutil.copyfileobj(input_file, output_file)
    inplace_change(save_path)
    with open(save_path, 'a') as output_file:
        output_file.write('\n(assert_return (invoke "main") (i32.const 0))')

    mutation_path = run_insert_useless_code(save_path)
    if mutation_path is None:
        return HTTPBadRequest('Mutation Failed')
    with open(mutation_path, 'a') as mutation_file:
        mutation_file.write('\n(assert_return (invoke "main") (i32.const 0))')

    with open(save_path, 'rb') as origin_file, open(mutation_path, 'rb') as mutation_file:
        fuzz_response = FuzzResponse(origin_file.read().decode(), mutation_file.read().decode(),
                                     evaluate_all_vms(save_path, mutation_path))
        return Response(fuzz_response.to_json())


if __name__ == '__main__':
    with Configurator() as config:
        config.add_route('upload', '/upload')
        config.add_view(upload_file, route_name='upload')
        config.add_route('home', '/{static_file:.*}')
        config.add_view(render_static, route_name='home')
        app = config.make_wsgi_app()
    serve(app, host='0.0.0.0', port=6543)
