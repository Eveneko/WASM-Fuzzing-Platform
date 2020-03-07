(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (call $bits
    (i32.add
     (call $bits
      (i32.const 30)
     )
     (call $bits2)
    )
   )
   (i32.const -2)
  )
 )
 (func $bits (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $2
   (i32.const 0)
  )
  (local.set $3
   (i32.const 1)
  )
  (loop $label$0
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.ne
      (i32.and
       (local.get $3)
       (local.get $0)
      )
      (i32.const 0)
     )
    )
   )
   (local.set $3
    (local.tee $1
     (i32.shl
      (local.get $3)
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (local.get $1)
   )
  )
  (local.get $2)
 )
 (func $bits2 (; 2 ;) (result i32)
  (i32.const 2)
 )
)

(assert_return (invoke "main") (i32.const 0))