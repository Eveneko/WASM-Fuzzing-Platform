(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (call $do_touzi
    (i32.const 36)
   )
   (i32.const -2)
  )
 )
 (func $do_touzi (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.sub
   (local.get $0)
   (i32.and
    (i32.add
     (i32.add
      (select
       (tee_local $1
        (i32.xor
         (local.get $0)
         (i32.const -1)
        )
       )
       (i32.const -4)
       (i32.gt_s
        (local.get $1)
        (i32.const -4)
       )
      )
      (local.get $0)
     )
     (i32.const 2)
    )
    (i32.const -2)
   )
  )
 )
)
