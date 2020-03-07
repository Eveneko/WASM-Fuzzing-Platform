(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "multiply" (func $multiply))
 (export "main" (func $main))
 (func $multiply (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $1)
   (get_local $0)
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.ne
   (call $multiply
    (i32.const 10)
    (i32.const 60)
   )
   (i32.const 600)
  )
 )
)
(assert_return (invoke "main") (i32.const 0))