
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "multiply" 
  (func $multiply)
 )

 (export "main" 
  (func $main)
 )

 (func $multiply 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (param $2 i32)

  (result i32)

  (local $3 i32)

  (i32.store offset=12
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 16)
    )
   )

   (get_local $0)
  )

  (i32.store offset=8
   (get_local $3)

   (get_local $1)
  )

  (i32.store offset=4
   (get_local $3)

   (get_local $2)
  )

  (i32.mul
   (i32.mul
    (i32.load offset=12
     (get_local $3)
    )

    (i32.load offset=8
     (get_local $3)
    )
   )

   (get_local $2)
  )
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (i32.store offset=4
   (i32.const 0)

   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 16)
    )
   )
  )

  (i32.store offset=12
   (get_local $1)

   (i32.const 0)
  )

  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eq
      (call $multiply
       (i32.const 10)

       (i32.const 10)

       (i32.const 20)
      )

      (i32.const 2000)
     )
    )

    (i32.store offset=12
     (get_local $1)

     (i32.const 1)
    )

    (br $label$0)
   )

   (i32.store offset=12
    (get_local $1)

    (i32.const 0)
   )
  )

  (set_local $0
   (i32.load offset=12
    (get_local $1)
   )
  )

  (i32.store offset=4
   (i32.const 0)

   (i32.add
    (get_local $1)

    (i32.const 16)
   )
  )

  (get_local $0)

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
