(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "sum" (func $sum))
 (export "main" (func $main))
 (func $sum (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (local.get $1)
   (local.get $0)
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.add
   (i32.const 0)
   (i32.const 0)
  )
 )
)
