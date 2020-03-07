
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "minus" 
  (func $minus)
 )

 (export "main" 
  (func $main)
 )

 (func $minus 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (param $2 i32)

  (result i32)

  (i32.sub
   (i32.sub
    (local.get $0)

    (local.get $1)
   )

   (local.get $2)
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

  (local $0 i32)

  (i32.add
   (select
    (tee_local $0
     (call $minus
      (i32.const 10)

      (i32.const 3)

      (i32.const 1)
     )
    )

    (i32.const 10)

    (i32.gt_s
     (local.get $0)

     (i32.const 10)
    )
   )

   (i32.const -10)
  )
 )
)
