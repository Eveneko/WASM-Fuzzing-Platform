
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

  (i32.add
   (call $genera
    (i32.const 5)

    (i32.const 3)
   )

   (i32.const -13)
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
