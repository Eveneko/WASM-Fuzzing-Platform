(module
 (memory $0 1)
 (data (i32.const 12) "d\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.ne
   (i32.load offset=12
    (i32.const 0)
   )
   (i32.const 100)
  )
 )
)