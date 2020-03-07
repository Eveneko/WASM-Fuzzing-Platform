(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "jumpFloor" (func $jumpFloor))
 (export "main" (func $main))
 (func $jumpFloor (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (local.get $0)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.ne
      (local.get $0)
      (i32.const 1)
     )
    )
    (return
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i32.lt_s
     (local.get $0)
     (i32.const 1)
    )
   )
   (local.set $0
    (i32.add
     (local.get $0)
     (i32.const 1)
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
      (tee_local $1
       (local.get $3)
      )
      (local.get $2)
     )
    )
    (local.set $2
     (local.get $1)
    )
    (br_if $label$2
     (i32.gt_s
      (tee_local $0
       (i32.add
        (local.get $0)
        (i32.const -1)
       )
      )
      (i32.const 1)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $main (; 1 ;) (result i32)
  (i32.add
   (call $jumpFloor
    (i32.const 22)
   )
   (i32.const -28657)
  )
 )
)
