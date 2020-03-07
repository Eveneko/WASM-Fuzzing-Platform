(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 36) "\10\00\00\00")
 (data (i32.const 40) "\18\00\00\00")
 (data (i32.const 44) "\07\00\00\00")
 (data (i32.const 48) "0\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.sub
   (i32.sub
    (i32.sub
     (i32.const 11)
     (i32.load
      (i32.load offset=36
       (i32.const 0)
      )
     )
    )
    (i32.load
     (i32.load offset=40
      (i32.const 0)
     )
    )
   )
   (i32.load
    (i32.add
     (i32.load offset=48
      (i32.const 0)
     )
     (i32.const -4)
    )
   )
  )
 )
)