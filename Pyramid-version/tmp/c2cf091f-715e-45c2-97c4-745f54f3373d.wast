(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (call $add)
   (i32.const -9)
  )
 )
 (func $add (; 1 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (i32.const 3)
  )
  (local.set $2
   (i32.const 6)
  )
  (loop $label$0
   (local.set $1
    (i32.and
     (local.get $3)
     (local.get $2)
    )
   )
   (local.set $3
    (tee_local $0
     (i32.xor
      (local.get $3)
      (local.get $2)
     )
    )
   )
   (br_if $label$0
    (local.tee $2
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
  (local.get $0)
 )
)
