(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (i32.add
    (call $reverse
     (i32.const 1463847412)
    )
    (call $reverse
     (i32.const -2147447412)
    )
   )
   (i32.const -36229)
  )
 )
 (func $reverse (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (local.get $0)
     )
    )
    (local.set $2
     (i32.const 0)
    )
    (loop $label$2
     (br_if $label$0
      (i32.gt_u
       (i32.add
        (local.get $2)
        (i32.const 214748364)
       )
       (i32.const 429496728)
      )
     )
     (local.set $2
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
     (local.set $1
      (i32.add
       (local.get $0)
       (i32.const 9)
      )
     )
     (local.set $0
      (i32.div_s
       (local.get $0)
       (i32.const 10)
      )
     )
     (br_if $label$2
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
   (return
    (i32.const 0)
   )
  )
  (i32.const 0)
 )
)
