
(module
 (memory $0 1)

 (data 
  (i32.const 16)
 )

 (export "memory" 
  (memory $0)
 )

 (export "Fibonacci_Search" 
  (func $Fibonacci_Search)
 )

 (export "main" 
  (func $main)
 )

 (func $Fibonacci_Search 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (param $2 i32)

  (result i32)

  (local $3 i32)

  (local $4 i32)

  (local $5 i32)

  (local $6 i32)

  (local $7 i32)

  (local $8 i32)

  (local $9 i32)

  (local.set $8
   (i32.const -1)
  )

  (local.set $5
   (i32.const 12)
  )

  (loop $label$0
   (local.set $8
    (i32.add
     (local.get $8)

     (i32.const 1)
    )
   )

   (br_if $label$0
    (i32.le_s
     (i32.load
      (local.tee $5
       (i32.add
        (local.get $5)

        (i32.const 4)
       )
      )
     )

     (local.get $1)
    )
   )
  )

  (local.set $6
   (local.tee $3
    (i32.add
     (local.get $0)

     (i32.shl
      (local.get $1)

      (i32.const 2)
     )
    )
   )
  )

  (local.set $7
   (local.get $1)
  )

  (loop $label$1
   (i32.store
    (local.get $6)

    (i32.load
     (local.get $3)
    )
   )

   (local.set $6
    (i32.add
     (local.get $6)

     (i32.const 4)
    )
   )

   (br_if $label$1
    (i32.lt_s
     (local.tee $7
      (i32.add
       (local.get $7)

       (i32.const 1)
      )
     )

     (i32.load
      (local.get $5)
     )
    )
   )
  )

  (local.set $6
   (i32.const 1)
  )

  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.lt_s
      (local.get $1)

      (i32.const 1)
     )
    )

    (local.set $9
     (local.get $1)
    )

    (loop $label$4
     (local.set $7
      (local.get $6)
     )

     (local.set $5
      (i32.add
       (i32.shl
        (local.get $8)

        (i32.const 2)
       )

       (i32.const 12)
      )
     )

     (local.set $8
      (i32.add
       (local.get $8)

       (i32.const -2)
      )
     )

     (block $label$5
      (loop $label$6
       (br_if $label$5
        (i32.le_s
         (local.tee $3
          (i32.load
           (i32.add
            (local.get $0)

            (i32.shl
             (local.tee $4
              (i32.add
               (local.tee $6
                (i32.add
                 (i32.load
                  (local.get $5)
                 )

                 (local.get $7)
                )
               )

               (i32.const -1)
              )
             )

             (i32.const 2)
            )
           )
          )
         )

         (local.get $2)
        )
       )

       (local.set $5
        (i32.add
         (local.get $5)

         (i32.const -4)
        )
       )

       (local.set $8
        (i32.add
         (local.get $8)

         (i32.const -1)
        )
       )

       (br_if $label$6
        (i32.le_s
         (local.get $7)

         (local.tee $9
          (i32.add
           (local.get $6)

           (i32.const -2)
          )
         )
        )
       )

       (br $label$3)
      )
     )

     (br_if $label$2
      (i32.ge_s
       (local.get $3)

       (local.get $2)
      )
     )

     (br_if $label$4
      (i32.le_s
       (local.get $6)

       (local.get $9)
      )
     )
    )
   )

   (return
    (i32.const 0)
   )
  )

  (select
   (local.get $1)

   (local.get $4)

   (i32.gt_s
    (local.get $4)

    (local.get $1)
   )
  )
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (local $2 i32)

  (local $3 i32)

  (local $4 i32)

  (local $5 i32)

  (local $6 i32)

  (local.set $5
   (i32.const -1)
  )

  (local.set $2
   (i32.const 12)
  )

  (loop $label$0
   (local.set $5
    (i32.add
     (local.get $5)

     (i32.const 1)
    )
   )

   (br_if $label$0
    (i32.lt_s
     (i32.load
      (local.tee $2
       (i32.add
        (local.get $2)

        (i32.const 4)
       )
      )
     )

     (i32.const 11)
    )
   )
  )

  (local.set $4
   (i32.const 10)
  )

  (local.set $3
   (i32.const 56)
  )

  (loop $label$1
   (i32.store
    (local.get $3)

    (i32.load offset=56
     (i32.const 0)
    )
   )

   (local.set $3
    (i32.add
     (local.get $3)

     (i32.const 4)
    )
   )

   (br_if $label$1
    (i32.lt_s
     (local.tee $4
      (i32.add
       (local.get $4)

       (i32.const 1)
      )
     )

     (i32.load
      (local.get $2)
     )
    )
   )
  )

  (local.set $3
   (i32.const 1)
  )

  (local.set $6
   (i32.const 10)
  )

  (block $label$2
   (block $label$3
    (loop $label$4
     (local.set $4
      (local.get $3)
     )

     (local.set $2
      (i32.add
       (i32.shl
        (local.get $5)

        (i32.const 2)
       )

       (i32.const 12)
      )
     )

     (local.set $5
      (i32.add
       (local.get $5)

       (i32.const -2)
      )
     )

     (block $label$5
      (loop $label$6
       (br_if $label$5
        (i32.lt_s
         (local.tee $1
          (i32.load
           (i32.add
            (i32.shl
             (local.tee $0
              (i32.add
               (local.tee $3
                (i32.add
                 (i32.load
                  (local.get $2)
                 )

                 (local.get $4)
                )
               )

               (i32.const -1)
              )
             )

             (i32.const 2)
            )

            (i32.const 16)
           )
          )
         )

         (i32.const 9)
        )
       )

       (local.set $2
        (i32.add
         (local.get $2)

         (i32.const -4)
        )
       )

       (local.set $5
        (i32.add
         (local.get $5)

         (i32.const -1)
        )
       )

       (br_if $label$6
        (i32.le_s
         (local.get $4)

         (local.tee $6
          (i32.add
           (local.get $3)

           (i32.const -2)
          )
         )
        )
       )

       (br $label$3)
      )
     )

     (br_if $label$2
      (i32.eq
       (local.get $1)

       (i32.const 8)
      )
     )

     (br_if $label$4
      (i32.le_s
       (local.get $3)

       (local.get $6)
      )
     )
    )

    (return
     (i32.const -6)
    )
   )

   (return
    (i32.const -6)
   )
  )

  (i32.add
   (select
    (local.get $0)

    (i32.const 10)

    (i32.lt_s
     (local.get $0)

     (i32.const 10)
    )
   )

   (i32.const -6)
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
