
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "main" 
  (func $main)
 )

 (func $main 
  (; 0 ;)

  (result i32)

  (call $nth_ugly)
 )

 (func $nth_ugly 
  (; 1 ;)

  (result i32)

  (local $0 i32)

  (get_local $0)

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
