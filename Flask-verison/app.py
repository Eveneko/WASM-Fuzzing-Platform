# -*- coding: utf-8 -*-
from flask import Flask, request, make_response
import os
import time
import json

app = Flask(__name__)  # Instantiate app object


# To solve "No 'Access-Control-Allow-Origin' header"
@app.after_request
def after_request(response):
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'PUT,GET,POST,DELETE'
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type,Authorization'
    return response


@app.route('/data/', methods=['POST'])  # route
def receive_code():
    """test"""
    print(request.data)
    """test end"""

    # Judge empty
    if not request.data:
        print('receive data is empty')
        resp = {'status': 'fail', 'content': '[File is empty!]'}
        return resp
    recv_data = request.data.decode('utf-8')

    # name
    tmp_data = recv_data[recv_data.index('filename="')+10:]
    name = tmp_data[:tmp_data.index('"')]

    # content
    tmp_data = recv_data.split('\r\n')[4:]
    recv_data = ''
    for subdata in tmp_data:
        recv_data += subdata
        recv_data += '\n'
    end_index = recv_data.index('------WebKitFormBoundary')
    recv_data = recv_data[:end_index]
    suffix = '.wast'
    if name.split('.')[1] != 'wast' and name.split('.')[1] != 'wasm':
        resp = {'status': 'fail', 'content': '[The file type does not match!]'}
        return resp
    file = './data/' + name.split('.')[0] + suffix
    newfile = './data/' + name.split('.')[0] + 'new' + suffix
    if not os.path.exists(file):
        f = open(file, 'w')
        f.write(recv_data)
        f.close()
        print(file + ' created.')
    else:
        print(file + ' already existed.')

    # Command    
    status = os.system('~/webassembly/spec/interpreter/wasm %s -o %s' % (file, newfile))
    if status != 0:
        resp = {'status': 'fail', 'content': '[WASM interpreter running error!]'}
        return resp

    # resp = make_response('OK')  # 请求处理成功后，返回'OK'到html中显示
    # resp.headers['Access-Control-Allow-Origin'] = '*'
    # resp.headers['Access-Control-Allow-Methods'] = 'POST'  # 响应POST

    f = open(newfile, 'r')
    tmp_content = f.readlines()
    content = ''.join(tmp_content)
    print(content)
    f.close()
    resp = {'status': 'success', 'content': content}
    return resp


if __name__ == '__main__':
    app.run(host='wasm.eveneko.com', port=5000, debug=True)
