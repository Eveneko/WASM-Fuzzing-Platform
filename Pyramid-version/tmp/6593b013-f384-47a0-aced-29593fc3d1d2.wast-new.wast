
(module
 (memory $0 1)

 (data 
  (i32.const 16)
 )

 (export "memory" 
  (memory $0)
 )

 (export "isAvailable" 
  (func $isAvailable)
 )

 (export "main" 
  (func $main)
 )

 (func $isAvailable 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (local $2 i32)

  (local $3 i32)

  (local $4 i32)

  (local $5 i32)

  (local.set $5
   (i32.const 0)
  )

  (local.set $3
   (i32.const 0)
  )

  (loop $label$0
   (local.set $4
    (i32.const -36)
   )

   (loop $label$1
    (local.set $5
     (i32.add
      (local.get $5)

      (i32.eq
       (i32.load
        (i32.add
         (i32.add
          (local.get $0)

          (local.get $4)
         )

         (i32.const 36)
        )
       )

       (local.get $1)
      )
     )
    )

    (local.set $4
     (local.tee $2
      (i32.add
       (local.get $4)

       (i32.const 4)
      )
     )
    )

    (br_if $label$1
     (local.get $2)
    )
   )

   (local.set $0
    (i32.add
     (local.get $0)

     (i32.const 36)
    )
   )

   (br_if $label$0
    (i32.ne
     (local.tee $3
      (i32.add
       (local.get $3)

       (i32.const 1)
      )
     )

     (i32.const 9)
    )
   )
  )

  (local.get $5)
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (i32.sub
   (i32.add
    (call $isAvailable
     (i32.const 16)

     (i32.const 8)
    )

    (i32.const -2)
   )

   (call $isAvailable
    (i32.const 16)

    (i32.const 5)
   )
  )
 )
)

(assert_return (invoke "main") (i32.const 0))