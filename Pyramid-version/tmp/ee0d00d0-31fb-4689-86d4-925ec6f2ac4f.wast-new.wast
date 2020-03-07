
(module
 (import "env" "n" 
  (global $n i32)
 )

 (import "env" "p" 
  (global $p i32)
 )

 (memory $0 1)

 (data 
  (i32.const 12)
 )

 (data 
  (i32.const 16)
 )

 (data 
  (i32.const 32)
 )

 (data 
  (i32.const 48)
 )

 (data 
  (i32.const 56)
 )

 (export "memory" 
  (memory $0)
 )

 (export "_Z1sv" 
  (func $_Z1sv)
 )

 (export "main" 
  (func $main)
 )

 (func $_Z1sv 
  (; 0 ;)

  (local $0 i32)

  (local $1 i32)

  (i32.store offset=4
   (i32.const 0)

   (local.tee $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 16)
    )
   )
  )

  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.load offset=12
      (i32.const 0)
     )
    )
   )

   (br_if $label$0
    (i32.eqz
     (i32.load offset=56
      (i32.const 0)
     )
    )
   )

   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i32.and
          (i32.load8_u offset=32
           (i32.const 0)
          )

          (i32.const 1)
         )
        )

        (br_if $label$4
         (i32.eqz
          (i32.load
           (call $_ZN1a1mI1jEixEi
            (i32.const 52)

            (i32.const 2)
           )
          )
         )
        )
       )

       (br_if $label$3
        (i32.eqz
         (i32.const 3)
        )
       )

       (br $label$2)
      )

      (br_if $label$2
       (i32.and
        (i32.load8_u offset=48
         (i32.const 0)
        )

        (i32.const 1)
       )
      )
     )

     (local.set $0
      (i32.const 1)
     )

     (br_if $label$1
      (i32.eqz
       (i32.and
        (i32.load8_u offset=48
         (i32.const 0)
        )

        (i32.const 1)
       )
      )
     )
    )

    (local.set $0
     (i32.const 0)
    )
   )

   (block $label$6
    (br_if $label$6
     (local.tee $0
      (i32.add
       (local.get $0)

       (i32.load offset=24
        (get_global $n)
       )
      )
     )
    )

    (block $label$7
     (block $label$8
      (block $label$9
       (br_if $label$9
        (i32.eqz
         (i32.load
          (call $_ZN1a1mI1jEixEi
           (i32.const 52)

           (i32.const 2)
          )
         )
        )
       )

       (br_if $label$8
        (i32.eqz
         (i32.const 3)
        )
       )

       (br $label$7)
      )

      (br_if $label$7
       (i32.and
        (i32.load8_u offset=48
         (i32.const 0)
        )

        (i32.const 1)
       )
      )
     )

     (local.set $0
      (i32.const 1)
     )

     (br_if $label$6
      (i32.eqz
       (i32.and
        (i32.load8_u offset=48
         (i32.const 0)
        )

        (i32.const 1)
       )
      )
     )
    )

    (local.set $0
     (i32.const 0)
    )
   )

   (i32.store
    (get_global $p)

    (local.get $0)
   )

   (block $label$10
    (block $label$11
     (block $label$12
      (block $label$13
       (br_if $label$13
        (i32.eqz
         (i32.load
          (call $_ZN1a1mI1jEixEi
           (i32.const 52)

           (i32.const 2)
          )
         )
        )
       )

       (br_if $label$12
        (i32.eqz
         (i32.const 1)
        )
       )

       (br $label$11)
      )

      (br_if $label$11
       (i32.and
        (i32.load8_u offset=48
         (i32.const 0)
        )

        (i32.const 1)
       )
      )
     )

     (local.set $0
      (i32.const 1)
     )

     (br_if $label$10
      (i32.eqz
       (i32.and
        (i32.load8_u offset=48
         (i32.const 0)
        )

        (i32.const 1)
       )
      )
     )
    )

    (local.set $0
     (i32.const 0)
    )
   )

   (block $label$14
    (block $label$15
     (block $label$16
      (br_if $label$16
       (i32.eqz
        (local.get $0)
       )
      )

      (block $label$17
       (br_if $label$17
        (i32.load offset=4
         (get_global $n)
        )
       )

       (drop
        (call $_ZN1a1mI1jEixEi
         (i32.const 52)

         (i32.const 1)
        )
       )
      )

      (block $label$18
       (br_if $label$18
        (i32.and
         (i32.load8_u offset=32
          (i32.const 0)
         )

         (i32.const 1)
        )
       )

       (br_if $label$15
        (i32.eqz
         (i32.load
          (call $_ZN1a1mI1jEixEi
           (i32.const 52)

           (i32.const 2)
          )
         )
        )
       )
      )

      (local.set $0
       (i32.load8_u offset=16
        (i32.const 0)
       )
      )

      (br $label$14)
     )

     (block $label$19
      (block $label$20
       (br_if $label$20
        (i32.eqz
         (i32.load
          (call $_ZN1a1mI1jEixEi
           (i32.const 52)

           (i32.const 2)
          )
         )
        )
       )

       (local.set $0
        (i32.load8_u offset=16
         (i32.const 0)
        )
       )

       (br $label$19)
      )

      (local.set $0
       (i32.load8_u offset=48
        (i32.const 0)
       )
      )
     )

     (br_if $label$0
      (i32.and
       (local.get $0)

       (i32.const 1)
      )
     )

     (drop
      (i32.and
       (i32.load8_u offset=48
        (i32.const 0)
       )

       (i32.const 1)
      )
     )

     (br $label$0)
    )

    (local.set $0
     (i32.load8_u offset=48
      (i32.const 0)
     )
    )
   )

   (br_if $label$0
    (i32.and
     (local.get $0)

     (i32.const 1)
    )
   )

   (drop
    (i32.and
     (i32.load8_u offset=48
      (i32.const 0)
     )

     (i32.const 1)
    )
   )
  )

  (i32.store offset=4
   (i32.const 0)

   (i32.add
    (local.get $1)

    (i32.const 16)
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

 (func $_ZN1a1mI1jEixEi 
  (; 1 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (local $2 i32)

  (i32.store offset=12
   (local.tee $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 16)
    )
   )

   (local.get $0)
  )

  (i32.store offset=8
   (local.get $2)

   (local.get $1)
  )

  (i32.add
   (i32.load
    (i32.load offset=12
     (local.get $2)
    )
   )

   (i32.shl
    (local.get $1)

    (i32.const 3)
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

 (func $main 
  (; 2 ;)

  (result i32)

  (call $_Z1sv)

  (i32.const 0)
 )
)
