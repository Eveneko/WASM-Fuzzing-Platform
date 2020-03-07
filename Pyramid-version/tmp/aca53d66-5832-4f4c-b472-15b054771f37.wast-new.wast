
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

  (i32.add
   (call $duplicate
    (i32.const 16)
   )

   (i32.const -2)
  )
 )

 (func $duplicate 
  (; 1 ;)

  (param $0 i32)

  (result i32)

  (local $1 i32)

  (local $2 i32)

  (local $3 i32)

  (local.set $1
   (i32.load
    (local.get $0)
   )
  )

  (local.set $2
   (i32.const 0)
  )

  (local.set $3
   (i32.const 0)
  )

  (loop $label$0
   (local.set $3
    (i32.add
     (local.get $3)

     (i32.eq
      (i32.load
       (i32.add
        (local.get $0)

        (local.get $2)
       )
      )

      (local.get $1)
     )
    )
   )

   (br_if $label$0
    (i32.ne
     (local.tee $2
      (i32.add
       (local.get $2)

       (i32.const 4)
      )
     )

     (i32.const 28)
    )
   )
  )

  (local.get $3)

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
