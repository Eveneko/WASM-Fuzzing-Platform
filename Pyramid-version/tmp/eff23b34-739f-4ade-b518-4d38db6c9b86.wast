(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00)\t\00\00\03\00\00\00\f9\10\00\00\"\00\00\00\1f\02\00\008\00\00\008\00\00\00A\00\00\00\"\00\00\00+\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (i32.const -2344)
  )
  (local.set $3
   (i32.const 0)
  )
  (local.set $2
   (i32.const 4)
  )
  (loop $label$0
   (local.set $3
    (i32.add
     (local.tee $4
      (local.get $3)
     )
     (i32.const 1)
    )
   )
   (local.set $0
    (i32.load
     (i32.add
      (i32.shl
       (local.get $4)
       (i32.const 2)
      )
      (i32.const 16)
     )
    )
   )
   (local.set $4
    (local.get $2)
   )
   (loop $label$1
    (local.set $5
     (select
      (local.tee $1
       (i32.sub
        (local.get $0)
        (i32.load
         (i32.add
          (local.get $4)
          (i32.const 16)
         )
        )
       )
      )
      (local.get $5)
      (i32.gt_s
       (local.get $1)
       (local.get $5)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (local.tee $4
       (i32.add
        (local.get $4)
        (i32.const 4)
       )
      )
      (i32.const 44)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 4)
    )
   )
   (br_if $label$0
    (i32.ne
     (local.get $3)
     (i32.const 10)
    )
   )
  )
  (i32.add
   (local.get $5)
   (i32.const -4311)
  )
 )
)

(assert_return (invoke "main") (i32.const 0))