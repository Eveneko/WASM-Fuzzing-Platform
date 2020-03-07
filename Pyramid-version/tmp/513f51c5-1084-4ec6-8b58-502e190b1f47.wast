(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\01\00\00\00\02\00\00\00\t\00\00\00+\00\00\006\00\00\00+\00\00\00\04\00\00\00\02\00\00\00\04\00\00\00\06\00\00\00")
 (export "memory" (memory $0))
 (export "BubbleSort1" (func $BubbleSort1))
 (export "main" (func $main))
 (func $BubbleSort1 (; 1 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $1)
     (i32.const 2)
    )
   )
   (set_local $6
    (i32.const 0)
   )
   (set_local $5
    (tee_local $2
     (i32.add
      (get_local $1)
      (i32.const -1)
     )
    )
   )
   (loop $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_s
       (i32.sub
        (get_local $2)
        (get_local $6)
       )
       (i32.const 1)
      )
     )
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (set_local $1
      (i32.const 0)
     )
     (set_local $7
      (get_local $0)
     )
     (loop $label$3
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i32.le_s
          (get_local $8)
          (tee_local $3
           (i32.load
            (tee_local $4
             (i32.add
              (get_local $7)
              (i32.const 4)
             )
            )
           )
          )
         )
        )
        (i32.store
         (get_local $7)
         (get_local $3)
        )
        (i32.store
         (i32.add
          (get_local $7)
          (i32.const 4)
         )
         (get_local $8)
        )
        (br $label$4)
       )
       (set_local $8
        (get_local $3)
       )
      )
      (set_local $7
       (get_local $4)
      )
      (br_if $label$3
       (i32.ne
        (get_local $5)
        (get_local $1)
       )
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const -1)
     )
    )
    (br_if $label$1
     (i32.ne
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $2)
     )
    )
   )
  )
 )
 (func $main (; 2 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $0
   (call $memcpy
    (get_local $5)
    (i32.const 16)
    (i32.const 44)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (loop $label$0
   (set_local $5
    (get_local $0)
   )
   (set_local $6
    (i32.load
     (get_local $0)
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (loop $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.le_s
        (get_local $6)
        (tee_local $1
         (i32.load
          (tee_local $2
           (i32.add
            (get_local $5)
            (i32.const 4)
           )
          )
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (get_local $1)
      )
      (i32.store
       (i32.add
        (get_local $5)
        (i32.const 4)
       )
       (get_local $6)
      )
      (br $label$2)
     )
     (set_local $6
      (get_local $1)
     )
    )
    (set_local $5
     (get_local $2)
    )
    (br_if $label$1
     (i32.ne
      (get_local $3)
      (tee_local $4
       (i32.add
        (get_local $4)
        (i32.const -1)
       )
      )
     )
    )
   )
   (br_if $label$0
    (i32.ne
     (tee_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (i32.const 10)
    )
   )
  )
  (set_local $5
   (i32.load offset=12
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $0)
    (i32.const 48)
   )
  )
  (get_local $5)
 )
)
