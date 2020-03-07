
(module
 (memory $0 1)

 (
  (export "memory" 
   (memory $0)
  )
)

 (
  (export "func" 
   (func $func)
  )
)

 (
  (export "main" 
   (func $main)
  )
)

 ( )

 (
  (func $main 
   (; 1 ;)

   (result i32)

   (local $0 i32)

   (select
    (i32.const 0)

    (tee_local $0
     (call $func
      (call $func
       (i32.const 10)

       (i32.const 4)
      )

      (call $func
       (i32.const 4)

       (i32.const 223)
      )
     )
    )

    (i32.eq
     (get_local $0)

     (i32.const 225)
    )
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
)

(assert_return (invoke "main") (i32.const 0))