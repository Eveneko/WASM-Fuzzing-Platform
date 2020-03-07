(module
 (memory $0 1)
 (data (i32.const 16) "t\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.ne
   (i32.shr_s
    (i32.shl
     (i32.const 16)
     (i32.const 24)
    )
    (i32.const 24)
   )
   (i32.const 16)
  )
 )
)