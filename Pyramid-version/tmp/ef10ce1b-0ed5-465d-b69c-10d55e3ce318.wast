(module
 (memory $0 1)
 (data (i32.const 16) "\03\00\00\00\04\00\00\00\05\00\00\00\01\00\00\00\02\00\00\00")
 (export "memory" (memory $0))
 (export "main" (func $main))
 (func $main (; 0 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (i32.store offset=4
   (i32.const 0)
   (local.tee $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
   (i32.load offset=32
    (i32.const 0)
   )
  )
  (i64.store offset=8
   (local.get $1)
   (i64.load offset=24
    (i32.const 0)
   )
  )
  (i64.store
   (local.get $1)
   (i64.load offset=16
    (i32.const 0)
   )
  )
  (local.set $0
   (call $min_in_rotated
    (local.get $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (local.get $1)
    (i32.const 32)
   )
  )
  (local.get $0)
 )
 (func $min_in_rotated (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (local.get $0)
     )
    )
    (local.set $5
     (i32.const 0)
    )
    (local.set $1
     (i32.const 4)
    )
    (local.set $10
     (i32.const 0)
    )
    (br $label$0)
   )
   (return
    (i32.const 0)
   )
  )
  (loop $label$2 (result i32)
   (local.set $3
    (i32.add
     (local.get $1)
     (i32.const -1)
    )
   )
   (local.set $4
    (i32.add
     (local.get $0)
     (i32.shl
      (local.get $5)
      (i32.const 2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $0)
     (i32.shl
      (local.get $1)
      (i32.const 2)
     )
    )
   )
   (block $label$3
    (block $label$4
     (loop $label$5
      (br_if $label$4
       (i32.ge_s
        (local.get $5)
        (local.get $1)
       )
      )
      (br_if $label$4
       (i32.lt_s
        (local.tee $6
         (i32.load
          (local.get $4)
         )
        )
        (local.tee $7
         (i32.load
          (local.get $2)
         )
        )
       )
      )
      (block $label$6
       (br_if $label$6
        (i32.eq
         (local.get $3)
         (local.get $5)
        )
       )
       (local.set $8
        (i32.add
         (local.get $5)
         (i32.const 1)
        )
       )
       (br_if $label$3
        (i32.ne
         (local.get $6)
         (local.tee $9
          (i32.load
           (i32.add
            (local.get $0)
            (i32.shl
             (local.tee $10
              (i32.div_s
               (i32.add
                (local.get $1)
                (local.get $5)
               )
               (i32.const 2)
              )
             )
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.const 4)
        )
       )
       (local.set $5
        (local.get $8)
       )
       (br_if $label$5
        (i32.eq
         (local.get $9)
         (local.get $7)
        )
       )
       (br $label$3)
      )
     )
     (local.set $10
      (local.get $1)
     )
    )
    (return
     (i32.load
      (i32.add
       (local.get $0)
       (i32.shl
        (local.get $10)
        (i32.const 2)
       )
      )
     )
    )
   )
   (local.set $5
    (select
     (i32.add
      (local.get $8)
      (i32.const -1)
     )
     (local.get $10)
     (local.tee $4
      (i32.lt_s
       (local.get $9)
       (local.get $6)
      )
     )
    )
   )
   (local.set $1
    (select
     (local.get $10)
     (local.get $1)
     (local.get $4)
    )
   )
   (br $label$2)
  )
 )
)

(assert_return (invoke "main") (i32.const 0))