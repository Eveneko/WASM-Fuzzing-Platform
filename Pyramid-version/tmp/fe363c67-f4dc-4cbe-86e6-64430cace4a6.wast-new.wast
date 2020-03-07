
(module
 (memory $0 1)

 (export "memory"
  (memory $0)
 )

 (export "func"
  (func $func)
 )

 (export "main"
  (func $main)
 )

 (func $func
  (; 0 ;)

  (param $0 f32)

  (param $1 f32)

  (result f32)

  (f32.sub
   (f32.add
    (get_local $0)

    (get_local $0)
   )

   (get_local $1)
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
  (; 1 ;)

  (result i32)

  (local $0 f32)

  (local $1 f32)

  (block $label$0
   (br_if $label$0
    (f32.gt
     (tee_local $0
      (f32.sub
       (f32.sub
        (f32.add
         (tee_local $0
          (call $func
           (f32.const 234.3419952392578)

           (f32.const 34.43199920654297)
          )
         )

         (get_local $0)
        )

        (tee_local $1
         (call $func
          (f32.const 3322.431884765625)

          (f32.const 34.20000076293945)
         )
        )
       )

       (call $func
        (get_local $0)

        (get_local $1)
       )
      )
     )

     (f32.const -1)
    )
   )

   (set_local $0
    (call $func
     (f32.const 234)

     (f32.const 24325.30078125)
    )
   )
  )

  (i32.trunc_s/f32
   (get_local $0)
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