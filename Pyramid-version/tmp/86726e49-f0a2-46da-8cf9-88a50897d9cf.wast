(module
 (memory $0 1)
 (data (i32.const 16) "\17\00\00\00\03\00\00\00\"\00\00\00+\00\00\00\06\00\00\00\01\00\00\00Y\00\00\00-\00\00\00L\00\00\00\03\00\00\00\17\00\00\00Y\01\00\00-\00\00\00C\00\00\00c\03\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (i32.const 34)
  )
  (local.set $2
   (i32.const -1)
  )
  (local.set $1
   (i32.const 16)
  )
  (block $label$0
   (loop $label$1
    (br_if $label$0
     (i32.gt_s
      (tee_local $0
       (i32.load
        (local.get $1)
       )
      )
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 4)
     )
    )
    (local.set $3
     (i32.add
      (local.get $0)
      (local.get $3)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 68)
     )
    )
   )
  )
  (i32.add
   (local.get $3)
   (i32.const -837)
  )
 )
)
