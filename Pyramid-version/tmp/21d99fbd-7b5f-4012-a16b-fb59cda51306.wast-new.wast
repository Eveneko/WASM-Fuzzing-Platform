
(module
 (memory $0 1)

 (data 
  (i32.const 16)
 )

 (data 
  (i32.const 18)
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

  (local $0 i32)

  (local $1 i32)

  (local.set $1
   (i32.const 0)
  )

  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (i32.load offset=20
        (i32.const 0)
       )
      )
     )
    )

    (br_if $label$0
     (i32.ne
      (local.get $0)

      (i32.const 2)
     )
    )

    (return
     (i32.const 1)
    )
   )

   (local.set $1
    (i32.const 0)
   )

   (i32.store offset=20
    (i32.const 0)

    (i32.add
     (i32.load offset=20
      (i32.const 0)
     )

     (i32.const 2)
    )
   )
  )

  (local.get $1)
 )
)
