(module
 (memory $0 1)
 (data (i32.const 12) "\00\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.load offset=12
   (i32.const 0)
  )
 )
)
