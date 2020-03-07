(module
 (memory $0 1)
 (data (i32.const 16) "\07\00\00\00\05\00\00\00\06\00\00\00\04\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (i32.add
   (call $revpair
    (i32.const 16)
   )
   (i32.const -5)
  )
 )
 (func $revpair (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $3
   (i32.add
    (local.get $0)
    (i32.const 4)
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (local.set $7
   (i32.const 0)
  )
  (loop $label$0
   (local.set $4
    (i32.add
     (tee_local $1
      (local.get $4)
     )
     (i32.const 1)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (local.get $1)
      (i32.const 2)
     )
    )
    (local.set $2
     (i32.load
      (i32.add
       (local.get $0)
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
    (local.set $5
     (i32.const 3)
    )
    (local.set $6
     (local.get $3)
    )
    (loop $label$2
     (local.set $7
      (i32.add
       (local.get $7)
       (i32.gt_s
        (local.get $2)
        (i32.load
         (local.get $6)
        )
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 4)
      )
     )
     (br_if $label$2
      (i32.ne
       (local.get $1)
       (tee_local $5
        (i32.add
         (local.get $5)
         (i32.const -1)
        )
       )
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 4)
    )
   )
   (br_if $label$0
    (i32.ne
     (local.get $4)
     (i32.const 4)
    )
   )
  )
  (local.get $7)
 )
)
