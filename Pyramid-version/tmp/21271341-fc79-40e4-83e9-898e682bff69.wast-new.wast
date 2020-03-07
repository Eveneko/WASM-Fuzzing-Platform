
(module
 (memory $0 1)
 (data 
  (i32.const 16)
 )
 (export "memory" 
  (memory $0)
 )
 (export "Binary_Search_insert" 
  (func $Binary_Search_insert)
 )
 (export "main" 
  (func $main)
 )
 (func $Binary_Search_insert 
  (; 0 ;)
  (param $0 i32)
  (param $1 i32)
  (param $2 i32)
  (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (local.get $1)
      (i32.const 1)
     )
    )
    (local.set $8
     (i32.const 1)
    )
    (loop $label$2
     (local.set $4
      (i32.sub
       (local.get $2)
       (local.tee $3
        (i32.load
         (i32.add
          (local.get $0)
          (i32.shl
           (local.get $8)
           (i32.const 2)
          )
         )
        )
       )
      )
     )
     (block $label$3
      (loop $label$4
       (br_if $label$3
        (i32.le_s
         (local.tee $7
          (i32.load
           (i32.add
            (local.get $0)
            (i32.shl
             (local.tee $6
              (i32.add
               (local.tee $5
                (i32.mul
                 (i32.div_s
                  (local.get $4)
                  (i32.sub
                   (i32.load
                    (i32.add
                     (local.get $0)
                     (i32.shl
                      (local.get $1)
                      (i32.const 2)
                     )
                    )
                   )
                   (local.get $3)
                  )
                 )
                 (i32.sub
                  (local.get $1)
                  (local.get $8)
                 )
                )
               )
               (local.get $8)
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
         (local.get $6)
         (i32.const -1)
        )
       )
       (br_if $label$4
        (i32.ge_s
         (local.get $5)
         (i32.const 1)
        )
       )
       (br $label$1)
      )
     )
     (br_if $label$0
      (i32.ge_s
       (local.get $7)
       (local.get $2)
      )
     )
     (local.set $8
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (i32.gt_s
       (local.get $1)
       (local.get $6)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (local.get $6)
  (block
   (loop
    (br_if 1 
     (f32.ne 
      (f32.min 
       (f32.const nan)
       (f32.const 0.0)
      )
      (f32.const 0.0)
     )
    )
    (br 0)
   )
  )
 )
 (func $main 
  (; 1 ;)
  (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (i32.const 9)
  )
  (local.set $4
   (i32.const 1)
  )
  (block $label$0
   (loop $label$1
    (local.set $1
     (i32.sub
      (i32.const 9)
      (local.tee $0
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
     )
    )
    (block $label$2
     (block $label$3
      (block
       (loop
        (br_if 1 
         (f32.ne 
          (f32.min 
           (f32.const nan)
           (f32.const 0.0)
          )
          (f32.const 0.0)
         )
        )
        (br 0)
       )
      )
      (loop $label$4
       (br_if $label$3
        (i32.gt_u
         (i32.add
          (local.tee $5
           (i32.add
            (local.tee $3
             (i32.mul
              (i32.div_s
               (local.get $1)
               (i32.sub
                (i32.load
                 (i32.add
                  (i32.shl
                   (local.get $2)
                   (i32.const 2)
                  )
                  (i32.const 16)
                 )
                )
                (local.get $0)
               )
              )
              (i32.sub
               (local.get $2)
               (local.get $4)
              )
             )
            )
            (local.get $4)
           )
          )
          (i32.const -7)
         )
         (i32.const 1)
        )
       )
       (local.set $2
        (i32.add
         (local.get $5)
         (i32.const -1)
        )
       )
       (br_if $label$4
        (i32.ge_s
         (local.get $3)
         (i32.const 1)
        )
       )
       (br $label$2)
      )
     )
     (br_if $label$0
      (i32.gt_u
       (local.get $5)
       (i32.const 5)
      )
     )
     (local.set $4
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br_if $label$1
      (i32.gt_s
       (local.get $2)
       (local.get $5)
      )
     )
    )
   )
   (local.set $5
    (i32.const 0)
   )
  )
  (i32.add
   (local.get $5)
   (i32.const 23)
  )
  (block
   (loop
    (br_if 1 
     (f32.ne 
      (f32.min 
       (f32.const nan)
       (f32.const 0.0)
      )
      (f32.const 0.0)
     )
    )
    (br 0)
   )
  )
 )
)
