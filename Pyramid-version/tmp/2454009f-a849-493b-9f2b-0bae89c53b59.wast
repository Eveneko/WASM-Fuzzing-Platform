(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (call $fibonaci
    (call $fibonaci
     (i32.const 4)
    )
   )
   (i32.const -2)
  )
 )
 (func $fibonaci (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (local.get $0)
     (i32.const 1)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (local.get $0)
      (i32.const 1)
     )
    )
    (local.set $0
     (i32.add
      (local.get $0)
      (i32.const -1)
     )
    )
    (local.set $2
     (i32.const 0)
    )
    (local.set $3
     (i32.const 1)
    )
    (loop $label$2
     (local.set $3
      (i32.add
       (local.tee $1
        (local.get $3)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (local.get $1)
     )
     (br_if $label$2
      (local.tee $0
       (i32.add
        (local.get $0)
        (i32.const -1)
       )
      )
     )
    )
   )
   (return
    (local.get $3)
   )
  )
  (i32.const 0)
 )
)
