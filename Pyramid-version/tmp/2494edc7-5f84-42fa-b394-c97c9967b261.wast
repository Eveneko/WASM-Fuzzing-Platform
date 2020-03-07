(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "reverse" (func $reverse))
 (export "main" (func $main))
 (func $reverse (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store offset=12
   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
   (local.get $0)
  )
  (i32.store offset=8
   (local.get $1)
   (i32.const 2147483647)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const -2147483648)
  )
  (i32.store
   (local.get $1)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.load offset=12
      (local.get $1)
     )
    )
   )
   (loop $label$1
    (i32.store
     (local.get $1)
     (i32.add
      (i32.mul
       (i32.load
        (local.get $1)
       )
       (i32.const 10)
      )
      (i32.rem_s
       (i32.load offset=12
        (local.get $1)
       )
       (i32.const 10)
      )
     )
    )
    (i32.store offset=12
     (local.get $1)
     (i32.div_s
      (i32.load offset=12
       (local.get $1)
      )
      (i32.const 10)
     )
    )
    (br_if $label$1
     (i32.load offset=12
      (local.get $1)
     )
    )
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.gt_s
     (i32.load
      (local.get $1)
     )
     (i32.load offset=8
      (local.get $1)
     )
    )
   )
   (br_if $label$2
    (i32.lt_s
     (i32.load
      (local.get $1)
     )
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
   (set_local $0
    (i32.load
     (local.get $1)
    )
   )
  )
  (local.get $0)
 )
 (func $main (; 1 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=28
   (local.get $1)
   (i32.const 0)
  )
  (i32.store offset=24
   (local.get $1)
   (i32.const -123)
  )
  (i32.store offset=20
   (local.get $1)
   (call $reverse
    (i32.const -123)
   )
  )
  (i32.store offset=16
   (local.get $1)
   (i32.const 120)
  )
  (i32.store offset=12
   (local.get $1)
   (call $reverse
    (i32.const 120)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ne
      (i32.load offset=20
       (local.get $1)
      )
      (i32.const -321)
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.load offset=12
       (local.get $1)
      )
      (i32.const 21)
     )
    )
    (i32.store offset=28
     (local.get $1)
     (i32.const 0)
    )
    (br $label$0)
   )
   (i32.store offset=28
    (local.get $1)
    (i32.const 1)
   )
  )
  (set_local $0
   (i32.load offset=28
    (local.get $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (local.get $1)
    (i32.const 32)
   )
  )
  (local.get $0)
 )
)
