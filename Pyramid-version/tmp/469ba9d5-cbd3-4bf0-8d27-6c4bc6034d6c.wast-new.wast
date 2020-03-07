
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "reverse" 
  (func $reverse)
 )

 (export "main" 
  (func $main)
 )

 (func $reverse 
  (; 0 ;)

  (param $0 i32)

  (result i32)

  (local $1 i32)

  (local $2 i32)

  (block $label$0
   (br_if $label$0
    (i32.eqz
     (local.get $0)
    )
   )

   (set_local $2
    (i32.const 0)
   )

   (loop $label$1
    (set_local $2
     (i32.add
      (i32.mul
       (local.get $2)

       (i32.const 10)
      )

      (i32.rem_s
       (local.get $0)

       (i32.const 10)
      )
     )
    )

    (set_local $1
     (i32.add
      (local.get $0)

      (i32.const 9)
     )
    )

    (set_local $0
     (i32.div_s
      (local.get $0)

      (i32.const 10)
     )
    )

    (br_if $label$1
     (i32.gt_u
      (local.get $1)

      (i32.const 18)
     )
    )
   )

   (return
    (local.get $2)
   )
  )

  (i32.const 0)
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (i32.or
   (i32.ne
    (call $reverse
     (i32.const -123)
    )

    (i32.const -321)
   )

   (i32.ne
    (call $reverse
     (i32.const 120)
    )

    (i32.const 21)
   )
  )
 )
)
