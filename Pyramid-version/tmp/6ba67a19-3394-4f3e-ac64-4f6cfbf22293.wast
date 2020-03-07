(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (i32.store offset=28
   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=24
   (get_local $1)
   (i32.const 10)
  )
  (i32.store offset=20
   (get_local $1)
   (i32.const 20)
  )
  (i32.store offset=16
   (get_local $1)
   (i32.sub
    (i32.const 20)
    (i32.load offset=24
     (get_local $1)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.gt_s
       (i32.add
        (i32.load offset=24
         (get_local $1)
        )
        (i32.load offset=20
         (get_local $1)
        )
       )
       (i32.const 9)
      )
     )
     (i32.store offset=12
      (get_local $1)
      (i32.load offset=20
       (get_local $1)
      )
     )
     (i32.store offset=20
      (get_local $1)
      (i32.load offset=24
       (get_local $1)
      )
     )
     (i32.store offset=24
      (get_local $1)
      (i32.shl
       (i32.load offset=12
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (br_if $label$1
      (i32.eqz
       (i32.load offset=16
        (get_local $1)
       )
      )
     )
     (br $label$0)
    )
    (i32.store offset=8
     (get_local $1)
     (i32.load offset=20
      (get_local $1)
     )
    )
    (i32.store offset=20
     (get_local $1)
     (i32.mul
      (i32.load offset=24
       (get_local $1)
      )
      (i32.const 10)
     )
    )
    (i32.store offset=24
     (get_local $1)
     (tee_local $0
      (i32.load offset=8
       (get_local $1)
      )
     )
    )
    (i32.store offset=16
     (get_local $1)
     (i32.sub
      (i32.load offset=20
       (get_local $1)
      )
      (i32.mul
       (get_local $0)
       (i32.const 5)
      )
     )
    )
    (br_if $label$0
     (i32.load offset=16
      (get_local $1)
     )
    )
   )
   (i32.store offset=28
    (get_local $1)
    (i32.load offset=16
     (get_local $1)
    )
   )
   (return
    (i32.load offset=28
     (get_local $1)
    )
   )
  )
  (i32.store offset=28
   (get_local $1)
   (i32.const 1)
  )
  (i32.load offset=28
   (get_local $1)
  )
 )
)
(assert_return (invoke "main") (i32.const 0))