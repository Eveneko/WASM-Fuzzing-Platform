(module
  (type $0 (func (result i32)))
  (memory $0 1)
  (func $0 (type 0) (call 1))
  (func $1 (type 0) (local i32) (local.get 0))
  (export "memory" (memory 0))
  (export "main" (func 0))
)