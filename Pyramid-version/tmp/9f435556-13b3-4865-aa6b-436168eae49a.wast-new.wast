
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "countPrimes" 
  (func $countPrimes)
 )

 (export "main" 
  (func $main)
 )

 (func $countPrimes 
  (; 2 ;)

  (param $0 i32)

  (result i32)

  (local $1 i32)

  (local $2 i32)

  (local $3 i32)

  (local $4 i32)

  (local $5 i32)

  (local $6 i32)

  (local.set $6
   (i32.const 0)
  )

  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (local.get $0)

     (i32.const 3)
    )
   )

   (local.set $1
    (call $memset
     (call $malloc
      (local.get $0)
     )

     (i32.const 0)

     (local.get $0)
    )
   )

   (local.set $6
    (i32.shr_u
     (local.get $0)

     (i32.const 1)
    )
   )

   (local.set $2
    (i32.const 9)
   )

   (br_if $label$0
    (i32.lt_s
     (local.get $0)

     (i32.const 9)
    )
   )

   (local.set $5
    (i32.const 3)
   )

   (loop $label$1
    (block $label$2
     (br_if $label$2
      (i32.load8_u
       (i32.add
        (local.get $1)

        (local.get $5)
       )
      )
     )

     (br_if $label$2
      (i32.ge_s
       (local.get $2)

       (local.get $0)
      )
     )

     (local.set $3
      (i32.shl
       (local.get $5)

       (i32.const 1)
      )
     )

     (loop $label$3
      (block $label$4
       (br_if $label$4
        (i32.load8_u
         (tee_local $4
          (i32.add
           (local.get $1)

           (local.get $2)
          )
         )
        )
       )

       (i32.store8
        (local.get $4)

        (i32.const 1)
       )

       (local.set $6
        (i32.add
         (local.get $6)

         (i32.const -1)
        )
       )
      )

      (br_if $label$3
       (i32.lt_s
        (tee_local $2
         (i32.add
          (local.get $2)

          (local.get $3)
         )
        )

        (local.get $0)
       )
      )
     )
    )

    (br_if $label$1
     (i32.le_s
      (tee_local $2
       (i32.mul
        (tee_local $5
         (i32.add
          (local.get $5)

          (i32.const 2)
         )
        )

        (local.get $5)
       )
      )

      (local.get $0)
     )
    )
   )
  )

  (local.get $6)

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )

 (func $main 
  (; 3 ;)

  (result i32)

  (i32.add
   (call $countPrimes
    (i32.const 7698)
   )

   (i32.const -976)
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
