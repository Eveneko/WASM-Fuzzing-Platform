(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "swap" (func $swap))
 (export "main" (func $main))
 (func $swap (; 0 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store
   (local.get $0)
   (tee_local $2
    (i32.xor
     (i32.load
      (local.get $1)
     )
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (i32.store
   (local.get $1)
   (tee_local $2
    (i32.xor
     (i32.load
      (local.get $1)
     )
     (local.get $2)
    )
   )
  )
  (i32.store
   (local.get $0)
   (i32.xor
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.const 0)
 )
)
