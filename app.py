# -*- coding: utf-8 -*-
from flask import Flask, request
import os
import time
import json

app = Flask(__name__)  # 实例化app对象


def after_request(response):
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'PUT,GET,POST,DELETE'
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type,Authorization'
    return response


@app.route('/data/', methods=['GET', 'POST'])  # 路由
def test_post():
    """receive data"""
    recv_data = request.get_data()
    if recv_data:
        recv_data = recv_data.decode('utf-8')
        tmp_data = recv_data.split('\r\n')[4:]
        recv_data = ''
        for subdata in tmp_data:
            recv_data += subdata
            recv_data += '\r\n'
        end_index = recv_data.index('------WebKitFormBoundary')
        recv_data = recv_data[:end_index]
        # print(recv_data)
        t = time.strftime('%Y-%m-%d-%H-%M-%S', time.localtime())  # 将指定格式的当前时间以字符串输出
        suffix = '.wast'
        newfile = './data/' + t + suffix
        if not os.path.exists(newfile):
            f = open(newfile, 'w')
            print(newfile)
            f.write(recv_data)
            f.close()
            print(newfile + ' created.')
        else:
            print(newfile + ' already existed.')
        # os.system('cd ~/webassembly/spec/interpreter')
        # os.system('ake opt')
        # os.system('./wasm %s -o %s' % (newfile, newfile + 'new'))

        """send data"""
        send_data = ''
        f = open(newfile, 'r')
        file_data = f.readlines()
        for line in file_data:
            send_data += line
        # print(send_data)
        return send_data
    else:
        print('receive data is empty')

        """send data"""
        return "empty"


if __name__ == '__main__':
    app.after_request(after_request)
    app.run(host='127.0.0.1', port=5000, debug=True)
