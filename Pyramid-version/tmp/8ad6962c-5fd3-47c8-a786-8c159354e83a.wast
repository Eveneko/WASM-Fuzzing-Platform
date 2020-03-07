(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.const -10)
 )
)

(assert_return (invoke "main") (i32.const 0))