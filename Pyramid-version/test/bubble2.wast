(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "BubbleSort2" (func $BubbleSort2))
 (export "main" (func $main))
 (func $BubbleSort2 (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $1)
     (i32.const 2)
    )
   )
   (set_local $2
    (i32.add
     (get_local $1)
     (i32.const -1)
    )
   )
   (set_local $3
    (i32.const 0)
   )
   (loop $label$1
    (set_local $4
     (get_local $1)
    )
    (loop $label$2
     (br_if $label$2
      (i32.gt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const -1)
        )
       )
       (get_local $3)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (tee_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (get_local $2)
     )
    )
   )
  )
  (get_local $4)
 )
 (func $main (; 1 ;) (result i32)
  (local $0 i32)
  (get_local $0)
 )
)
