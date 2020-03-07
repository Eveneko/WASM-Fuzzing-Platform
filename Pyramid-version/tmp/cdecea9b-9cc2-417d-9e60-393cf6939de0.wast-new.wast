
(module
 (memory $0 1)

 (data 
  (i32.const 16)
 )

 (data 
  (i32.const 36)
 )

 (data 
  (i32.const 40)
 )

 (data 
  (i32.const 44)
 )

 (data 
  (i32.const 48)
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

  (i32.store offset=12
   (i32.sub
    (i32.load offset=4
     (i32.const 0)
    )

    (i32.const 16)
   )

   (i32.const 0)
  )

  (i32.sub
   (i32.const 11)

   (i32.add
    (i32.add
     (i32.load
      (i32.load offset=36
       (i32.const 0)
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

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )
)
