(module
 (memory $0 1)
 (data (i32.const 12) "\01\00\00\00\02\00\00\00\03\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=12
   (get_local $7)
   (i32.const 0)
  )
  (set_local $0
   (call $t1)
  )
  (set_local $1
   (call $t2)
  )
  (set_local $2
   (call $t3)
  )
  (set_local $3
   (call $t4)
  )
  (set_local $4
   (call $t5)
  )
  (set_local $5
   (call $t6)
  )
  (set_local $6
   (call $t7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (i32.add
   (get_local $6)
   (i32.add
    (get_local $5)
    (i32.add
     (get_local $4)
     (i32.add
      (get_local $3)
      (i32.add
       (get_local $2)
       (i32.add
        (get_local $0)
        (get_local $1)
       )
      )
     )
    )
   )
  )
 )
 (func $t1 (; 1 ;) (result i32)
  (local $0 i32)
  (i32.store offset=12
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 1)
  )
  (i32.sub
   (i32.const 1)
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $t2 (; 2 ;) (result i32)
  (local $0 i32)
  (i32.store offset=12
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
   (i32.or
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.const 12)
   )
  )
  (i32.store offset=28
   (get_local $0)
   (i32.const 1)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.store
   (i32.load offset=12
    (get_local $0)
   )
   (i32.const 32)
  )
  (i32.sub
   (i32.const 32)
   (i32.load offset=28
    (get_local $0)
   )
  )
 )
 (func $t3 (; 3 ;) (result i32)
  (local $0 i32)
  (i32.store offset=44
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
   (i32.const 62)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.const 0)
 )
 (func $t4 (; 4 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (i32.add
    (tee_local $3
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
    (i32.const 12)
   )
   (tee_local $0
    (i32.load offset=20
     (i32.const 0)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (tee_local $1
    (i32.load offset=16
     (i32.const 0)
    )
   )
  )
  (i32.store offset=4
   (get_local $3)
   (tee_local $2
    (i32.load offset=12
     (i32.const 0)
    )
   )
  )
  (i32.sub
   (i32.const 6)
   (i32.add
    (i32.add
     (get_local $2)
     (get_local $1)
    )
    (get_local $0)
   )
  )
 )
 (func $t5 (; 5 ;) (result i32)
  (local $0 i32)
  (i32.store offset=32
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 1)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.const 2)
 )
 (func $t6 (; 6 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=32
   (get_local $1)
   (i32.const 65)
  )
  (i32.store offset=12
   (get_local $1)
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (drop
   (call $t6a
    (i32.const 65)
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (set_local $0
   (i32.load offset=44
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (get_local $0)
 )
 (func $t6a (; 7 ;) (param $0 i32) (param $1 i32) (result i32)
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
  (i32.sub
   (i32.load offset=12
    (get_local $2)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
 )
 (func $t7 (; 8 ;) (result i32)
  (i32.store offset=32
   (i32.sub
    (i32.load offset=4
     (i32.const 0)
    )
    (i32.const 48)
   )
   (i32.const 68)
  )
  (i32.const 0)
 )
)
