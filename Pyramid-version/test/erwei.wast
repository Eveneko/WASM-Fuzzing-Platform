(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\02\00\00\00\08\00\00\00\t\00\00\00\02\00\00\00\04\00\00\00\t\00\00\00\0c\00\00\00\04\00\00\00\07\00\00\00\n\00\00\00\0d\00\00\00\06\00\00\00\08\00\00\00\0b\00\00\00\0f\00\00\00")
 (export "memory" (memory $0))
 (export "findNumber" (func $findNumber))
 (export "main" (func $main))
 (func $findNumber (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local.set $9
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (local.get $0)
      (i32.const 1)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (local.get $1)
      (i32.const 1)
     )
    )
    (local.set $6
     (i32.gt_s
      (local.get $0)
      (i32.const 0)
     )
    )
    (local.set $4
     (i32.shl
      (local.get $1)
      (i32.const 2)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const -1)
     )
    )
    (local.set $7
     (i32.const 0)
    )
    (loop $label$2
     (local.set $8
      (i32.add
       (local.get $2)
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
     (loop $label$3
      (br_if $label$0
       (i32.eq
        (tee_local $5
         (i32.load
          (local.get $8)
         )
        )
        (local.get $3)
       )
      )
      (block $label$4
       (br_if $label$4
        (i32.le_s
         (local.get $5)
         (local.get $3)
        )
       )
       (local.set $8
        (i32.add
         (local.get $8)
         (i32.const -4)
        )
       )
       (local.set $9
        (i32.const 0)
       )
       (local.set $5
        (i32.gt_s
         (local.get $1)
         (i32.const 0)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const -1)
        )
       )
       (br_if $label$3
        (i32.and
         (local.get $6)
         (local.get $5)
        )
       )
       (br $label$1)
      )
     )
     (local.set $9
      (i32.const 0)
     )
     (br_if $label$1
      (i32.ge_s
       (tee_local $7
        (i32.add
         (local.get $7)
         (i32.const 1)
        )
       )
       (local.get $0)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (local.get $4)
      )
     )
     (local.set $6
      (i32.lt_s
       (local.get $7)
       (local.get $0)
      )
     )
     (br_if $label$2
      (i32.gt_s
       (local.get $1)
       (i32.const -1)
      )
     )
    )
   )
   (return
    (local.get $9)
   )
  )
  (i32.const 1)
 )
 (func $main (; 1 ;) (result i32)
  (i32.add
   (call $findNumber
    (i32.const 4)
    (i32.const 4)
    (i32.const 16)
    (i32.const 7)
   )
   (i32.const -1)
  )
 )
)
