
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "hanio" 
  (func $hanio)
 )

 (export "main" 
  (func $main)
 )

 (func $hanio 
  (; 0 ;)

  (param $0 i32)

  (result i32)

  (local $1 i32)

  (local.set $1
   (i32.const 1)
  )

  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (local.get $0)

     (i32.const 1)
    )
   )

   (local.set $1
    (i32.const 1)
   )

   (loop $label$1
    (local.set $1
     (i32.mul
      (local.get $1)

      (i32.const 3)
     )
    )

    (br_if $label$1
     (local.tee $0
      (i32.add
       (local.get $0)

       (i32.const -1)
      )
     )
    )
   )
  )

  (local.get $1)
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (i32.const 0)
 )
)
