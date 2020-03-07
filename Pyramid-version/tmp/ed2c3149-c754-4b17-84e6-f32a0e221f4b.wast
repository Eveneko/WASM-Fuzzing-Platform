(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (local $0 i32)
  (i32.store offset=12
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 18)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 34)
  )
  (i32.store
   (get_local $0)
   (i32.const 3)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (i32.mul
      (i32.mul
       (i32.load offset=8
        (get_local $0)
       )
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.const 3)
     )
     (i32.const 1836)
    )
   )
   (i32.store offset=12
    (get_local $0)
    (i32.const 1)
   )
   (return
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 0)
  )
  (i32.load offset=12
   (get_local $0)
  )
 )
)
(assert_return (invoke "main") (i32.const 0))