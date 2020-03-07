(module
 (memory $0 1)
 (data (i32.const 16) "\10\00\00\00\0e\00\00\00\06\00\00\00\05\00\00\00\04\00\00\00\03\00\00\00\02\00\00\00")
 (export "memory" (memory $0))
 (export "schedule" (func $schedule))
 (export "main" (func $main))
 (func $schedule (; 1 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 800)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $0)
     (i32.const 1)
    )
   )
   (drop
    (call $memset
     (i32.add
      (get_local $11)
      (i32.const 400)
     )
     (i32.const 0)
     (i32.shl
      (get_local $0)
      (i32.const 2)
     )
    )
   )
   (set_local $9
    (i32.add
     (get_local $11)
     (i32.const 400)
    )
   )
   (set_local $8
    (get_local $11)
   )
   (set_local $10
    (get_local $0)
   )
   (set_local $7
    (get_local $2)
   )
   (loop $label$1
    (i32.store
     (get_local $8)
     (i32.const 1)
    )
    (i32.store
     (get_local $9)
     (i32.add
      (i32.load
       (get_local $7)
      )
      (i32.load
       (get_local $9)
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
    (set_local $7
     (i32.add
      (get_local $7)
      (i32.const 4)
     )
    )
    (set_local $9
     (i32.add
      (get_local $9)
      (i32.const 4)
     )
    )
    (br_if $label$1
     (tee_local $10
      (i32.add
       (get_local $10)
       (i32.const -1)
      )
     )
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.ge_s
     (get_local $0)
     (get_local $1)
    )
   )
   (set_local $3
    (i32.or
     (i32.add
      (get_local $11)
      (i32.const 400)
     )
     (i32.const 4)
    )
   )
   (set_local $4
    (i32.lt_s
     (get_local $0)
     (i32.const 2)
    )
   )
   (set_local $6
    (get_local $0)
   )
   (loop $label$3
    (set_local $10
     (i32.const 0)
    )
    (block $label$4
     (br_if $label$4
      (get_local $4)
     )
     (set_local $9
      (i32.const 1)
     )
     (set_local $10
      (i32.const 0)
     )
     (set_local $8
      (i32.load offset=400
       (get_local $11)
      )
     )
     (set_local $7
      (get_local $3)
     )
     (loop $label$5
      (set_local $8
       (select
        (tee_local $5
         (i32.load
          (get_local $7)
         )
        )
        (get_local $8)
        (tee_local $5
         (i32.gt_s
          (get_local $8)
          (get_local $5)
         )
        )
       )
      )
      (set_local $10
       (select
        (get_local $9)
        (get_local $10)
        (get_local $5)
       )
      )
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 4)
       )
      )
      (br_if $label$5
       (i32.ne
        (get_local $0)
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $8
      (i32.add
       (get_local $11)
       (tee_local $9
        (i32.shl
         (get_local $10)
         (i32.const 2)
        )
       )
      )
     )
     (i32.add
      (i32.load
       (get_local $8)
      )
      (i32.const 1)
     )
    )
    (i32.store
     (tee_local $9
      (i32.add
       (i32.add
        (get_local $11)
        (i32.const 400)
       )
       (get_local $9)
      )
     )
     (i32.add
      (i32.load
       (i32.add
        (get_local $2)
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
      )
      (i32.load
       (get_local $9)
      )
     )
    )
    (br_if $label$3
     (i32.ne
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $1)
     )
    )
   )
  )
  (set_local $9
   (i32.const 0)
  )
  (block $label$6
   (br_if $label$6
    (i32.lt_s
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $8
    (i32.add
     (get_local $11)
     (i32.const 400)
    )
   )
   (loop $label$7
    (set_local $9
     (select
      (tee_local $7
       (i32.load
        (get_local $8)
       )
      )
      (get_local $9)
      (i32.lt_s
       (get_local $9)
       (get_local $7)
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
    (br_if $label$7
     (tee_local $0
      (i32.add
       (get_local $0)
       (i32.const -1)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 800)
   )
  )
  (get_local $9)
 )
 (func $main (; 2 ;) (result i32)
  (call $schedule
   (i32.const 3)
   (i32.const 7)
   (i32.const 16)
  )
 )
)
