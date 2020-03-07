(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "mul" (func $mul))
 (export "main" (func $main))
 (func $mul (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.mul
   (i32.mul
    (get_local $1)
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.const 0)
 )
)