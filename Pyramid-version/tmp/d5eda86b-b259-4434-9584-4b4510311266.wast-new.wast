
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "is_prime" 
  (func $is_prime)
 )

 (export "main" 
  (func $main)
 )

 (func $is_prime 
  (; 0 ;)

  (param $0 i32)

  (result i32)

  (local $1 i32)

  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eq
      (local.get $0)

      (i32.const 1)
     )
    )

    (br_if $label$0
     (i32.eq
      (local.get $0)

      (i32.const 2)
     )
    )

    (block $label$2
     (br_if $label$2
      (i32.ge_s
       (local.get $0)

       (i32.const 4)
      )
     )

     (return
      (i32.const 1)
     )
    )

    (local.set $1
     (i32.const 2)
    )

    (loop $label$3
     (br_if $label$1
      (i32.eqz
       (i32.rem_s
        (local.get $0)

        (local.get $1)
       )
      )
     )

     (br_if $label$3
      (i32.le_s
       (i32.mul
        (local.tee $1
         (i32.add
          (local.get $1)

          (i32.const 1)
         )
        )

        (local.get $1)
       )

       (local.get $0)
      )
     )

     (br $label$0)
    )
   )

   (return
    (i32.const 0)
   )
  )

  (i32.const 1)
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (local.set $1
   (i32.const 3)
  )

  (block $label$0
   (loop $label$1
    (br_if $label$0
     (i32.eqz
      (i32.rem_s
       (i32.const 11234435)

       (i32.add
        (local.get $1)

        (i32.const -1)
       )
      )
     )
    )

    (local.set $0
     (i32.mul
      (local.get $1)

      (local.get $1)
     )
    )

    (local.set $1
     (i32.add
      (local.get $1)

      (i32.const 1)
     )
    )

    (br_if $label$1
     (i32.le_u
      (local.get $0)

      (i32.const 11234435)
     )
    )
   )

   (return
    (i32.const 1)
   )
  )

  (i32.const 0)

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
