(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "add" (func $add))
 (export "minus" (func $minus))
 (export "com" (func $com))
 (export "main" (func $main))
 (func $add (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.add
   (i32.add
    (get_local $1)
    (get_local $0)
   )
   (get_local $2)
  )
 )
 (func $minus (; 1 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.sub
   (i32.sub
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $com (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (select
   (get_local $0)
   (get_local $1)
   (i32.gt_s
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $main (; 3 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (select
   (i32.const 0)
   (i32.const 42)
   (i32.gt_s
    (call $add
     (tee_local $0
      (call $add
       (i32.const 2)
       (i32.const 5)
       (i32.const 7)
      )
     )
     (tee_local $1
      (call $minus
       (i32.const 1093)
       (i32.const 234)
       (i32.const 45)
      )
     )
     (tee_local $2
      (call $com
       (call $com
        (i32.const 35)
        (i32.const 345)
       )
       (call $com
        (i32.const 234)
        (i32.const 23)
       )
      )
     )
    )
    (call $minus
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
  )
 )
)