
(module
 (memory $0 1)

 (data 
  (i32.const 12)
 )

 (data 
  (i32.const 16)
 )

 (export "memory" 
  (memory $0)
 )

 (export "main" 
  (func $main)
 )

 (func $main 
  (; 0 ;)

  (result i32)

  (i32.store offset=20
   (i32.const 0)

   (i32.or
    (i32.and
     (i32.load offset=20
      (i32.const 0)
     )

     (i32.const -131072)
    )

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

      (i32.const -302807)
     )

     (i32.const 131071)
    )
   )
  )

  (i32.const 0)
 )
)