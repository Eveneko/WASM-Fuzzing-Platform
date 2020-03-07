(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (export "foo" (func $foo))
 (export "bar" (func $bar))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (call $bar
    (i32.const 4)
   )
   (i32.const 5)
  )
 )
 (func $foo (; 1 ;) (param $0 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $0
    (i32.add
     (call $bar
      (i32.add
       (get_local $0)
       (i32.const -1)
      )
     )
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $bar (; 2 ;) (param $0 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $0)
     (i32.const 1)
    )
   )
   (return
    (i32.add
     (call $bar
      (i32.shr_u
       (get_local $0)
       (i32.const 1)
      )
     )
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
)

(assert_return (invoke "main") (i32.const 0))