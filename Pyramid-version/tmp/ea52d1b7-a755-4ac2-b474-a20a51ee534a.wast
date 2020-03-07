(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\02\00\00\00\04\00\00\00\03\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00")
 (export "memory" (memory $0))
 (export "moreThanAHalfNum" (func $moreThanAHalfNum))
 (export "main" (func $main))
 (func $moreThanAHalfNum (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.set $4
    (i32.add
     (local.get $0)
     (i32.const 4)
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const -1)
    )
   )
   (local.set $0
    (i32.const 1)
   )
   (loop $label$1
    (local.set $3
     (select
      (local.get $5)
      (local.tee $2
       (i32.load
        (local.get $4)
       )
      )
      (local.get $0)
     )
    )
    (local.set $4
     (i32.add
      (local.get $4)
      (i32.const 4)
     )
    )
    (local.set $0
     (i32.add
      (select
       (select
        (i32.const 1)
        (i32.const -1)
        (i32.eq
         (local.get $5)
         (local.get $2)
        )
       )
       (i32.const 1)
       (local.get $0)
      )
      (local.get $0)
     )
    )
    (local.set $5
     (local.get $3)
    )
    (br_if $label$1
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
    )
   )
   (return
    (local.get $3)
   )
  )
  (local.get $5)
 )
 (func $main (; 1 ;) (result i32)
  (i32.add
   (call $moreThanAHalfNum
    (i32.const 16)
    (i32.const 8)
   )
   (i32.const -2)
  )
 )
)
