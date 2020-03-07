
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "numberof1" 
  (func $numberof1)
 )

 (export "main" 
  (func $main)
 )

 (func $numberof1 
  (; 0 ;)

  (param $0 i32)

  (result i32)

  (i32.popcnt
   (local.get $0)
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
   (call $numberof1
    (i32.const 234)
   )

   (i32.const -5)
  )
 )
)
