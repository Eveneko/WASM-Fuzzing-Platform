
(module
 (memory $0 1)
 (data 
  (i32.const 12)
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
  (i32.load offset=12
   (i32.const 0)
  )
  (block
   (loop
    (br_if 1 
     (f32.ne 
      (f32.min 
       (f32.const nan)
       (f32.const 0.0)
      )
      (f32.const 0.0)
     )
    )
    (br 0)
   )
  )
 )
)
