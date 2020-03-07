(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\fe\ff\ff\ff\03\00\00\00\n\00\00\00\fc\ff\ff\ff\07\00\00\00\02\00\00\00\fb\ff\ff\ff")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (call $max_sum
    (i32.const 16)
   )
   (i32.const -18)
  )
 )
 (func $max_sum (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.const 4)
  )
  (local.set $3
   (local.tee $2
    (i32.load
     (local.get $0)
    )
   )
  )
  (loop $label$0
   (local.set $2
    (select
     (local.tee $3
      (i32.add
       (i32.load
        (i32.add
         (local.get $0)
         (local.get $1)
        )
       )
       (select
        (local.get $3)
        (i32.const 0)
        (i32.gt_s
         (local.get $3)
         (i32.const 0)
        )
       )
      )
     )
     (local.get $2)
     (i32.gt_s
      (local.get $3)
      (local.get $2)
     )
    )
   )
   (br_if $label$0
    (i32.ne
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const 4)
      )
     )
     (i32.const 32)
    )
   )
  )
  (local.get $2)
 )
)
