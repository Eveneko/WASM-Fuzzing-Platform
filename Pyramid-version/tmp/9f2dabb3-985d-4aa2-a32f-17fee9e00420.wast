(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "one" (func $one))
 (export "main" (func $main))
 (func $one (; 0 ;) (param $0 f32) (param $1 f32) (result f32)
  (f32.sub
   (f32.add
    (get_local $0)
    (get_local $0)
   )
   (get_local $1)
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.const 0)
 )
)