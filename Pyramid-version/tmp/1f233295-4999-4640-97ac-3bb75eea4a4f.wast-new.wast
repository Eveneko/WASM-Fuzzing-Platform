
(module
 (table 0 anyfunc)

 (memory $0 1)

 (data 
  (i32.const 16)
 )

 (export "memory" 
  (memory $0)
 )

 (export "recurbinary" 
  (func $recurbinary)
 )

 (export "main" 
  (func $main)
 )

 (func $recurbinary 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (local $2 i32)

  (set_local $2
   (i32.const -1)
  )

  (block $label$0
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (get_local $0)
      )

      (get_local $1)
     )
    )

    (set_local $0
     (i32.add
      (get_local $0)

      (i32.const 4)
     )
    )

    (br_if $label$1
     (i32.le_s
      (tee_local $2
       (i32.add
        (get_local $2)

        (i32.const 1)
       )
      )

      (i32.const 8)
     )
    )
   )

   (return
    (i32.const 1)
   )
  )

  (i32.const 0)
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (block $label$0
   (block $label$1
    (br_if $label$1
     (call $recurbinary
      (i32.const 16)

      (i32.const 1)
     )
    )

    (br_if $label$0
     (i32.eqz
      (call $recurbinary
       (i32.const 16)

       (i32.const 6)
      )
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
