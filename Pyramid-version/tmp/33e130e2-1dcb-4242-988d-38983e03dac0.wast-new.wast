
(module
 (memory $0 1)
 (export "memory" 
  (memory $0)
 )
 (export "func" 
  (func $func)
 )
 (export "main" 
  (func $main)
 )
 (func $func 
  (; 0 ;)
  (param $0 f32)
  (param $1 f32)
  (result f32)
  (f32.sub
   (f32.add
    (local.get $0)
    (local.get $0)
   )
   (local.get $1)
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
 (func $main 
  (; 1 ;)
  (result i32)
  (local $0 f32)
  (local $1 f32)
  (block $label$0
   (br_if $label$0
    (f32.gt
     (local.tee $0
      (f32.sub
       (f32.sub
        (f32.add
         (local.tee $0
          (call $func
           (f32.const 234.3419952392578)
           (f32.const 34.43199920654297)
          )
         )
         (local.get $0)
        )
        (local.tee $1
         (call $func
          (f32.const 3322.431884765625)
          (f32.const 34.20000076293945)
         )
        )
       )
       (call $func
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (f32.const -1)
    )
   )
   (local.set $0
    (call $func
     (f32.const 234)
     (f32.const 24325.30078125)
    )
   )
  )
  (i32.trunc_s/f32
   (local.get $0)
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
