
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "genera" 
  (func $genera)
 )

 (export "main" 
  (func $main)
 )

 (func $genera 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (i32.add
   (i32.shl
    (local.get $0)

    (i32.const 1)
   )

   (local.get $1)
  )
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (local $0 i32)

  (i32.sub
   (i32.const 13)

   (i32.shr_s
    (i32.shr_s
     (i32.shl
      (i32.const 218103808)

      (tee_local $0
       (call $genera
        (i32.const 3)

        (i32.const -7)
       )
      )
     )

     (i32.const 24)
    )

    (local.get $0)
   )
  )
 )
)
