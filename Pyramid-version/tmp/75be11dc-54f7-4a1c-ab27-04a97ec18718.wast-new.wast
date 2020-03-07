
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "main" 
  (func $main)
 )

 (func $main 
  (; 0 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (drop
   (local.tee $1
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )

  (i32.store offset=32
   (local.tee $1
    (i32.and
     (i32.sub
      (local.get $1)

      (i32.const 64)
     )

     (i32.const -64)
    )
   )

   (i32.mul
    (i32.rem_u
     (i32.const 0)

     (i32.load offset=32
      (local.get $1)
     )
    )

    (i32.const 8199)
   )
  )

  (local.set $0
   (i32.load offset=24
    (local.get $1)
   )
  )

  (i64.store offset=16
   (local.get $1)

   (i64.extend_u/i32
    (i32.mul
     (i32.rem_u
      (i32.const 0)

      (i32.load offset=16
       (local.get $1)
      )
     )

     (i32.const 8199)
    )
   )
  )

  (i64.store offset=24
   (local.get $1)

   (i64.extend_u/i32
    (i32.mul
     (i32.rem_u
      (i32.const 0)

      (local.get $0)
     )

     (i32.const 8199)
    )
   )
  )

  (i64.store offset=8
   (local.get $1)

   (i64.extend_u/i32
    (i32.mul
     (i32.rem_u
      (i32.const 0)

      (i32.load offset=8
       (local.get $1)
      )
     )

     (i32.const 8199)
    )
   )
  )

  (i64.store
   (local.get $1)

   (i64.extend_u/i32
    (i32.mul
     (i32.rem_u
      (i32.const 0)

      (i32.load
       (local.get $1)
      )
     )

     (i32.const 8199)
    )
   )
  )

  (i32.const 0)
 )
)
