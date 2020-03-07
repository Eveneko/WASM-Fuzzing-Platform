(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "sqrt" (func $sqrt))
 (export "main" (func $main))
 (func $sqrt (; 0 ;) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local.set $5
   (i64.extend_s/i32
    (i32.add
     (i32.div_s
      (local.get $0)
      (i32.const 2)
     )
     (i32.const 1)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (local.get $0)
      (i32.const -3)
     )
    )
    (local.set $1
     (i64.extend_s/i32
      (local.get $0)
     )
    )
    (local.set $4
     (i64.const 0)
    )
    (loop $label$2
     (br_if $label$0
      (i64.eq
       (tee_local $3
        (i64.mul
         (tee_local $2
          (i64.div_s
           (i64.add
            (local.get $4)
            (local.get $5)
           )
           (i64.const 2)
          )
         )
         (local.get $2)
        )
       )
       (local.get $1)
      )
     )
     (br_if $label$2
      (i64.le_s
       (tee_local $4
        (select
         (i64.add
          (local.get $2)
          (i64.const 1)
         )
         (local.get $4)
         (tee_local $0
          (i64.lt_s
           (local.get $3)
           (local.get $1)
          )
         )
        )
       )
       (tee_local $5
        (select
         (local.get $5)
         (i64.add
          (local.get $2)
          (i64.const -1)
         )
         (local.get $0)
        )
       )
      )
     )
    )
   )
   (return
    (i32.wrap/i64
     (local.get $5)
    )
   )
  )
  (i32.wrap/i64
   (local.get $2)
  )
 )
 (func $main (; 1 ;) (result i32)
  (i32.add
   (call $sqrt
    (i32.const 18)
   )
   (i32.const -4)
  )
 )
)
