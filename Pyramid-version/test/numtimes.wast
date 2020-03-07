(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\02\00\00\00\03\00\00\00\03\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (call $num_times
   (i32.const 16)
  )
 )
 (func $num_times (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.const -1)
  )
  (local.set $3
   (i32.const 8)
  )
  (loop $label$0
   (br_if $label$0
    (i32.ne
     (i32.add
      (tee_local $4
       (select
        (tee_local $1
         (i32.div_s
          (i32.add
           (local.get $3)
           (local.get $4)
          )
          (i32.const 2)
         )
        )
        (local.get $4)
        (tee_local $2
         (i32.lt_s
          (i32.load
           (i32.add
            (local.get $0)
            (i32.shl
             (local.get $1)
             (i32.const 2)
            )
           )
          )
          (i32.const 0)
         )
        )
       )
      )
      (i32.const 1)
     )
     (tee_local $3
      (select
       (local.get $3)
       (local.get $1)
       (local.get $2)
      )
     )
    )
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.gt_s
     (local.get $3)
     (i32.const 7)
    )
   )
   (br_if $label$1
    (i32.load
     (tee_local $4
      (i32.add
       (local.get $0)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const -1)
    )
   )
   (local.set $1
    (i32.const 0)
   )
   (loop $label$2
    (br_if $label$1
     (i32.load
      (local.get $4)
     )
    )
    (local.set $4
     (i32.add
      (local.get $4)
      (i32.const 4)
     )
    )
    (br_if $label$2
     (i32.lt_s
      (i32.add
       (local.get $3)
       (tee_local $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
)
