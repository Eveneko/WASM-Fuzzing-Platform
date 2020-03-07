(module
 (memory $0 1)
 (data (i32.const 12) "\00\00\00\00")
 (data (i32.const 16) "\00\00\00\00")
 (export "memory" (memory $0))
 (export "_Z1ev" (func $_Z1ev))
 (func $_Z1ev (; 0 ;)
  (i32.store offset=20
   (i32.const 0)
   (i32.or
    (i32.and
     (i32.add
      (i32.add
       (i32.load offset=16
        (i32.const 0)
       )
       (i32.load offset=12
        (i32.const 0)
       )
      )
      (i32.const 90409)
     )
     (i32.const 131071)
    )
    (i32.and
     (i32.load offset=20
      (i32.const 0)
     )
     (i32.const -131072)
    )
   )
  )
 )
)
