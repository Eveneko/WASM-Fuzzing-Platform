(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "fib" (func $fib))
 (export "sum" (func $sum))
 (export "main" (func $main))
 (func $fib (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $0)
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (get_local $0)
      )
     )
     (br_if $label$1
      (i32.ne
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 1)
      )
     )
    )
    (i32.store offset=12
     (get_local $1)
     (i32.load offset=8
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (i32.store offset=12
    (get_local $1)
    (i32.add
     (call $fib
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const -1)
      )
     )
     (call $fib
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const -2)
      )
     )
    )
   )
  )
  (set_local $0
   (i32.load offset=12
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $sum (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $main (; 2 ;) (result i32)
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
     (i32.const 16)
    )
   )
  )
  (i32.store offset=12
   (get_local $2)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $2)
   (i32.const 5)
  )
  (i32.store offset=4
   (get_local $2)
   (i32.const 1)
  )
  (i32.store
   (get_local $2)
   (tee_local $0
    (call $fib
     (i32.load offset=8
      (get_local $2)
     )
    )
   )
  )
  (set_local $1
   (call $sum
    (i32.const 100)
    (i32.const 20)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
)
(assert_return (invoke "main") (i32.const 0))