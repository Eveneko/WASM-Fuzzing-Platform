(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "Binary_Search" (func $Binary_Search))
 (export "main" (func $main))
 (func $Binary_Search (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (local.get $1)
      (i32.const 1)
     )
    )
    (local.set $5
     (i32.const 1)
    )
    (loop $label$2
     (block $label$3
      (br_if $label$3
       (i32.le_s
        (local.tee $4
         (i32.load
          (i32.add
           (local.get $0)
           (i32.shl
            (local.tee $3
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
        (local.get $2)
       )
      )
      (local.set $1
       (i32.add
        (local.get $3)
        (i32.const -1)
       )
      )
      (br_if $label$2
       (i32.lt_s
        (local.get $5)
        (local.get $3)
       )
      )
      (br $label$1)
     )
     (br_if $label$0
      (i32.ge_s
       (local.get $4)
       (local.get $2)
      )
     )
     (local.set $5
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (i32.lt_s
       (local.get $3)
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (local.get $3)
 )
 (func $main (; 1 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $0
   (i32.const 6)
  )
  (local.set $1
   (i32.const 1)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (local.tee $2
          (i32.div_s
           (i32.add
            (local.get $0)
            (local.get $1)
           )
           (i32.const 2)
          )
         )
         (i32.const -3)
        )
        (i32.const 2)
       )
      )
      (local.set $0
       (i32.add
        (local.get $2)
        (i32.const -1)
       )
      )
      (br_if $label$2
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
      (br $label$1)
     )
     (br_if $label$0
      (i32.ne
       (i32.or
        (local.get $2)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (i32.lt_s
       (local.get $2)
       (local.get $0)
      )
     )
    )
   )
   (local.set $2
    (i32.const 0)
   )
  )
  (i32.add
   (local.get $2)
   (i32.const -2)
  )
 )
)
