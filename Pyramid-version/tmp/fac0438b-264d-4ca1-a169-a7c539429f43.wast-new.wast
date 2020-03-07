
(module
 (memory $0 1)

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

  (call $myAtoi
   (call $myAtoi
    (i32.const 16)
   )
  )
 )

 (func $myAtoi 
  (; 1 ;)

  (param $0 i32)

  (result i32)

  (local $1 i32)

  (local $2 i32)

  (local $3 i32)

  (local $4 i32)

  (local $5 i32)

  (local $6 i32)

  (local $7 i32)

  (block $label$0
   (loop $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (local.tee $1
        (i32.load8_u
         (local.get $0)
        )
       )

       (i32.const 9)
      )
     )

     (br_if $label$0
      (i32.ne
       (local.get $1)

       (i32.const 32)
      )
     )
    )

    (local.set $0
     (i32.add
      (local.get $0)

      (i32.const 1)
     )
    )

    (br $label$1)
   )
  )

  (local.set $7
   (i32.const 0)
  )

  (local.set $1
   (i32.const 0)
  )

  (block $label$3
   (br_if $label$3
    (i32.eqz
     (local.tee $4
      (i32.load8_u
       (local.get $0)
      )
     )
    )
   )

   (local.set $2
    (i32.add
     (local.get $0)

     (i32.const 1)
    )
   )

   (local.set $3
    (i32.shr_s
     (i32.shl
      (local.get $4)

      (i32.const 24)
     )

     (i32.const 24)
    )
   )

   (local.set $6
    (i32.const 0)
   )

   (local.set $5
    (i32.const 0)
   )

   (block $label$4
    (block $label$5
     (loop $label$6
      (local.set $1
       (local.get $5)
      )

      (local.set $7
       (local.get $6)
      )

      (local.set $0
       (local.get $2)
      )

      (block $label$7
       (block $label$8
        (block $label$9
         (block $label$10
          (br_if $label$10
           (i32.gt_u
            (local.tee $6
             (i32.add
              (local.get $3)

              (i32.const -48)
             )
            )

            (i32.const 9)
           )
          )

          (br_if $label$9
           (i32.eqz
            (local.get $7)
           )
          )

          (br_if $label$8
           (i32.le_s
            (i32.div_s
             (i32.add
              (local.get $3)

              (i32.const 2147483600)
             )

             (i32.const 10)
            )

            (i32.sub
             (i32.const 0)

             (local.get $1)
            )
           )
          )

          (br $label$5)
         )

         (block $label$11
          (br_if $label$11
           (i32.eq
            (local.tee $6
             (i32.and
              (local.get $4)

              (i32.const 255)
             )
            )

            (i32.const 43)
           )
          )

          (br_if $label$3
           (i32.ne
            (local.get $6)

            (i32.const 45)
           )
          )

          (br_if $label$3
           (local.get $1)
          )

          (br_if $label$3
           (i32.ge_u
            (i32.add
             (i32.load8_s
              (local.get $0)
             )

             (i32.const -48)
            )

            (i32.const 10)
           )
          )

          (local.set $6
           (i32.const 1)
          )

          (local.set $5
           (i32.const 0)
          )

          (br $label$7)
         )

         (br_if $label$3
          (local.get $1)
         )

         (local.set $5
          (i32.const 0)
         )

         (local.set $6
          (i32.const 0)
         )

         (br_if $label$7
          (i32.le_u
           (i32.add
            (i32.load8_s
             (local.get $0)
            )

            (i32.const -48)
           )

           (i32.const 9)
          )
         )

         (br $label$3)
        )

        (br_if $label$4
         (i32.gt_s
          (local.get $1)

          (i32.div_s
           (i32.sub
            (i32.const -2147483601)

            (local.get $3)
           )

           (i32.const 10)
          )
         )
        )
       )

       (local.set $5
        (i32.add
         (local.get $6)

         (i32.mul
          (local.get $1)

          (i32.const 10)
         )
        )
       )

       (local.set $6
        (local.get $7)
       )
      )

      (local.set $2
       (i32.add
        (local.get $0)

        (i32.const 1)
       )
      )

      (local.set $3
       (i32.shr_s
        (i32.shl
         (local.tee $4
          (i32.load8_u
           (local.get $0)
          )
         )

         (i32.const 24)
        )

        (i32.const 24)
       )
      )

      (local.set $7
       (local.get $6)
      )

      (local.set $1
       (local.get $5)
      )

      (br_if $label$6
       (local.get $4)
      )

      (br $label$3)
     )
    )

    (local.set $1
     (i32.const -2147483648)
    )

    (br $label$3)
   )

   (local.set $1
    (i32.const 2147483647)
   )

   (local.set $7
    (i32.const 0)
   )
  )

  (select
   (i32.sub
    (i32.const 0)

    (local.get $1)
   )

   (local.get $1)

   (local.get $7)
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
