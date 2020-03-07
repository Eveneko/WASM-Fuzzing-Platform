(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "divide" (func $divide))
 (export "main" (func $main))
 (func $divide (; 0 ;) (param $0 i32) (param $1 f32) (result f32)
  (f32.div
   (f32.convert_s/i32
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.const 0)
 )
)
(assert_return (invoke "main") (i32.const 0))