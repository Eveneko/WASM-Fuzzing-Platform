(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "fib" (func $fib))
 (export "sum" (func $sum))
 (export "main" (func $main))
 (func $fib (; 0 ;) (param $0 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.ne
     (i32.or
      (get_local $0)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.add
   (call $fib
    (i32.add
     (get_local $0)
     (i32.const -1)
    )
   )
   (call $fib
    (i32.add
     (get_local $0)
     (i32.const -2)
    )
   )
  )
 )
 (func $sum (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $1)
   (get_local $0)
  )
 )
 (func $main (; 2 ;) (result i32)
  (i32.sub
   (call $fib
    (i32.const 5)
   )
   (call $sum
    (i32.const 100)
    (i32.const 20)
   )
  )
 )
)

(assert_return (invoke "main") (i32.const 0))