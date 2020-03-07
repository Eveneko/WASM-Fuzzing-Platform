(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (export "foo" (func $foo))
 (func $main (; 0 ;) (result i32)
  (call $foo
   (i32.const 1)
   (i32.const 2)
  )
 )
 (func $foo (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.shl
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
 )
)
