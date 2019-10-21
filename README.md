# WASM-Fuzzing-Platform
A presentation platform for wasm fuzzing

### Environment
- Python 3.6.8
- Flask 1.1.1
- Werkzeug 0.16.0

### How to build
- configure the `nginx.conf` in the server
- run `app.py` by `nohup pythoon -u app.py > app.log 2>&1 &`

### How to use
- Login http://wasm.eveneko.com/
- Upload the file(`*.wasm`, `*.wast`)
- return the origin result, modified result

### Exist problem
- [x] ~~Backend highlighting~~
  - <font color=996996>Front-end regular expression matching</font>
  ```
  content = json.content.replace(new RegExp("\\(unreachable\\)", "g"), "<font color=\"#000000\" style=\"background:yellow\">(unreachable)</font>");
  ```
- [ ] BrowserVM and other VM
- [ ] Page beautification
- [ ] Unnecessary alert