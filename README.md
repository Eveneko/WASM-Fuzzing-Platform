# WASM-Fuzzing-Platform
A presentation platform for wasm fuzzing
site: [http://wasm.eveneko.com](http://wasm.eveneko.com)

## Pyramid version

### Environment
- Python 3.6.8
- Pyramid 1.10.4

### Struct
.  
├── __pycache__  
│   └── fuzz_response.cpython-36.pyc  
├── app.py  
├── fuzz_response.py  
├── interpreter  
│   └── wasm  
├── public  
├── static  
│   ├── images  
│   │   └── logo.ico  
│   └── index.html  
└── tmp  

### How to use
- run `app.py` by `nohup pythoon -u app.py > app.log 2>&1 &`

### Advantages
- No need nginx

## Flask version

### Environment
- Python 3.6.8
- Flask 1.1.1
- Werkzeug 0.16.0

### Struct
.  
├── app.py  
├── data  
├── js  
│   ├── http_cdnjs.cloudflare.com_ajax_libs_popper.js_1.12.9_umd_popper.js  
│   ├── http_code.jquery.com_jquery-3.2.1.slim.js  
│   └── http_maxcdn.bootstrapcdn.com_bootstrap_4.0.0_js_bootstrap.js  
├── static  
│   ├── images  
│   │   └── logo.ico  
│   └── index.html  
├── templates  
└── test  
    └── loop.wast  

### How to build
- configure the `nginx.conf` in the server
- run `app.py` by `nohup pythoon -u app.py > app.log 2>&1 &`

### How to use
- Login http://wasm.eveneko.com/
- Upload the file(`*.wasm`, `*.wast`)
- return the origin result, modified result

### Advantages
- Real separation of front and rear ends, Even if the backend server is down, the front end still displays normally

### Problems
- [ ] Lack of the mutation
