(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "foo" (func $foo))
 (export "main" (func $main))
 (func $foo (; 0 ;) (result i32)
  (i32.const 3)
 )
 (func $main (; 1 ;) (result i32)
  (i32.const 5)
 )
)

(assert_return (invoke "main") (i32.const 0))