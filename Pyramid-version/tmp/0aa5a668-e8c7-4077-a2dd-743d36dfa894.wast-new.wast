(module
  (type $0 (func (param i32 i32) (result i32)))
  (type $1 (func (result i32)))
  (memory $0 1)
  (func $0 (type 0) (local i32 i32 i32) (unreachable) (unreachable))
  (func $1 (type 1) (local i32) (local.get 0))
  (export "memory" (memory 0))
  (export "BubbleSort2" (func 0))
  (export "main" (func 1))
)