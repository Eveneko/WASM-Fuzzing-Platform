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
        resp = {'srrmsg': 'file is empty!'}
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
    newfile = './data/' + name.split('.')[0] + suffix
    if not os.path.exists(newfile):
        f = open(newfile, 'w')
        f.write(recv_data)
        f.close()
        print(newfile + ' created.')
    else:
        print(newfile + ' already existed.')

    # Command
    # os.system('~/webassembly/spec/interpreter/wasm %s -o %s' % (newfile, newfile + 'new'))

    # resp = make_response('OK')  # 请求处理成功后，返回'OK'到html中显示
    # resp.headers['Access-Control-Allow-Origin'] = '*'
    # resp.headers['Access-Control-Allow-Methods'] = 'POST'  # 响应POST

    f = open(newfile, 'r')
    tmp_content = f.readlines()
    content = ''.join(tmp_content)
    f.close()
    resp = {'msg': 'success', 'content': content}
    return resp


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000, debug=True)
