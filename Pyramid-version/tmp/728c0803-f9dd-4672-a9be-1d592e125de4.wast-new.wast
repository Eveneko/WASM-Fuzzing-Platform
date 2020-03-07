(module
  (type $0 (func (result i32)))
  (memory $0 1)
  (func $0 (type 0) (i32.const 0) (i32.load offset=12) (i32.const 100) (i32.ne))
  (export "memory" (memory 0))
  (export "main" (func 0))
  (data 0 (offset (i32.const 12)) "\64\00\00\00")
)