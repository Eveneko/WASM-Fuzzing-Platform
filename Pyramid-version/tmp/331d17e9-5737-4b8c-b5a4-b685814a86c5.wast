(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "ariprogression" (func $ariprogression))
 (export "main" (func $main))
 (func $ariprogression (; 0 ;) (param $0 i32) (result i32)
  (i32.div_s
   (i32.mul
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
    (get_local $0)
   )
   (i32.const 2)
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.const 0)
 )
)
