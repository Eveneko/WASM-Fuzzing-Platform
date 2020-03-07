(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "add" (func $add))
 (export "main" (func $main))
 (func $add (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store offset=12
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
   (get_local $0)
  )
  (i32.store offset=8
   (get_local $2)
   (get_local $1)
  )
  (i32.add
   (i32.load offset=12
    (get_local $2)
   )
   (get_local $1)
  )
 )
 (func $main (; 1 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=28
   (get_local $2)
   (i32.const 0)
  )
  (i32.store offset=24
   (get_local $2)
   (i32.const 1)
  )
  (i32.store offset=20
   (get_local $2)
   (i32.const 6)
  )
  (i32.store offset=16
   (get_local $2)
   (i32.const 24)
  )
  (i32.store offset=12
   (get_local $2)
   (tee_local $0
    (call $add
     (i32.load offset=24
      (get_local $2)
     )
     (i32.load offset=20
      (get_local $2)
     )
    )
   )
  )
  (i32.store offset=12
   (get_local $2)
   (call $add
    (get_local $0)
    (i32.load offset=16
     (get_local $2)
    )
   )
  )
  (set_local $0
   (call $add
    (i32.const 23)
    (i32.const 8)
   )
  )
  (set_local $1
   (i32.load offset=12
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 32)
   )
  )
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
)