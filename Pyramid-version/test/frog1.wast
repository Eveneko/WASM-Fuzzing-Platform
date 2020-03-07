(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "frogjump" (func $frogjump))
 (export "main" (func $main))
 (func $frogjump (; 0 ;) (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (local.get $0)
     (i32.const 2)
    )
   )
   (local.set $1
    (i64.const 1)
   )
   (loop $label$1
    (local.set $1
     (i64.add
      (call $frogjump
       (i32.add
        (local.get $0)
        (i32.const -1)
       )
      )
      (local.get $1)
     )
    )
    (br_if $label$1
     (i32.gt_u
      (tee_local $0
       (i32.add
        (local.get $0)
        (i32.const -2)
       )
      )
      (i32.const 1)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $main (; 1 ;) (result i32)
  (i32.wrap/i64
   (i64.add
    (call $frogjump
     (i32.const 7)
    )
    (i64.const 4294967275)
   )
  )
 )
)
