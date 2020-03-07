(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "Sequential_Search2" (func $Sequential_Search2))
 (export "main" (func $main))
 (func $Sequential_Search2 (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 1)
   )
  )
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
  )
  (loop $label$0
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const -1)
    )
   )
   (local.set $0
    (i32.load
     (local.get $1)
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const -4)
    )
   )
   (br_if $label$0
    (i32.ne
     (local.get $0)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $main (; 1 ;) (result i32)
  (i32.const 0)
 )
)
