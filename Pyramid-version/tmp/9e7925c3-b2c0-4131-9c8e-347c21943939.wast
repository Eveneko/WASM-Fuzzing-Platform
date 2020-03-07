(module
 (memory $0 1)
 (data (i32.const 144) "P\00\00\00(\00\00\00\1e\00\00\00<\00\00\00Z\00\00\00F\00\00\00\n\00\00\002\00\00\00\14\00\00\00")
 (export "memory" (memory $0))
 (export "get_index" (func $get_index))
 (export "minheap_filterdown" (func $minheap_filterdown))
 (export "minheap_remove" (func $minheap_remove))
 (export "filter_up" (func $filter_up))
 (export "minheap_insert" (func $minheap_insert))
 (export "main" (func $main))
 (func $get_index (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (tee_local $1
       (i32.load offset=12
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (local.set $2
     (i32.const 16)
    )
    (loop $label$2
     (br_if $label$0
      (i32.eq
       (i32.load
        (local.get $2)
       )
       (local.get $0)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 4)
      )
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $3
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const -1)
   )
  )
  (local.get $3)
 )
 (func $minheap_filterdown (; 1 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $2
   (i32.load
    (i32.add
     (i32.shl
      (local.get $0)
      (i32.const 2)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.gt_s
      (tee_local $3
       (i32.or
        (i32.shl
         (local.get $0)
         (i32.const 1)
        )
        (i32.const 1)
       )
      )
      (local.get $1)
     )
    )
    (loop $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_s
         (local.get $3)
         (local.get $1)
        )
       )
       (local.set $4
        (select
         (tee_local $4
          (i32.add
           (local.get $3)
           (i32.const 1)
          )
         )
         (local.get $3)
         (i32.gt_s
          (i32.load
           (i32.add
            (i32.shl
             (local.get $3)
             (i32.const 2)
            )
            (i32.const 16)
           )
          )
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
       (br $label$3)
      )
      (local.set $4
       (local.get $3)
      )
     )
     (br_if $label$1
      (i32.le_s
       (local.get $2)
       (tee_local $3
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
     (i32.store
      (i32.add
       (i32.shl
        (local.get $0)
        (i32.const 2)
       )
       (i32.const 16)
      )
      (local.get $3)
     )
     (local.set $0
      (local.get $4)
     )
     (br_if $label$2
      (i32.le_s
       (tee_local $3
        (i32.or
         (i32.shl
          (local.get $4)
          (i32.const 1)
         )
         (i32.const 1)
        )
       )
       (local.get $1)
      )
     )
     (br $label$0)
    )
   )
   (local.set $4
    (local.get $0)
   )
  )
  (i32.store
   (i32.add
    (i32.shl
     (local.get $4)
     (i32.const 2)
    )
    (i32.const 16)
   )
   (local.get $2)
  )
 )
 (func $minheap_remove (; 2 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (i32.const 0)
  )
  (local.set $5
   (i32.const -1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $1
      (i32.load offset=12
       (i32.const 0)
      )
     )
     (i32.const 1)
    )
   )
   (local.set $4
    (i32.const 16)
   )
   (local.set $2
    (i32.const 1)
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.eq
       (i32.load
        (local.get $4)
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
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 2)
      )
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $3
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
       (local.get $1)
      )
     )
     (br $label$0)
    )
   )
   (local.set $5
    (i32.const -1)
   )
   (br_if $label$0
    (i32.eq
     (local.get $3)
     (i32.const -1)
    )
   )
   (local.set $5
    (i32.const 0)
   )
   (i32.store offset=12
    (i32.const 0)
    (tee_local $0
     (i32.add
      (local.get $1)
      (i32.const -1)
     )
    )
   )
   (i32.store
    (local.get $4)
    (tee_local $0
     (i32.load
      (i32.add
       (i32.shl
        (local.get $0)
        (i32.const 2)
       )
       (i32.const 16)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.gt_s
       (local.get $2)
       (tee_local $1
        (i32.add
         (local.get $1)
         (i32.const -2)
        )
       )
      )
     )
     (loop $label$5
      (block $label$6
       (block $label$7
        (br_if $label$7
         (i32.ge_s
          (local.get $2)
          (local.get $1)
         )
        )
        (local.set $4
         (select
          (tee_local $4
           (i32.add
            (local.get $2)
            (i32.const 1)
           )
          )
          (local.get $2)
          (i32.gt_s
           (i32.load
            (i32.add
             (i32.shl
              (local.get $2)
              (i32.const 2)
             )
             (i32.const 16)
            )
           )
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
        (br $label$6)
       )
       (local.set $4
        (local.get $2)
       )
      )
      (br_if $label$4
       (i32.le_s
        (local.get $0)
        (tee_local $2
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
      (i32.store
       (i32.add
        (i32.shl
         (local.get $3)
         (i32.const 2)
        )
        (i32.const 16)
       )
       (local.get $2)
      )
      (local.set $3
       (local.get $4)
      )
      (br_if $label$5
       (i32.le_s
        (tee_local $2
         (i32.or
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
          (i32.const 1)
         )
        )
        (local.get $1)
       )
      )
      (br $label$3)
     )
    )
    (local.set $4
     (local.get $3)
    )
   )
   (i32.store
    (i32.add
     (i32.shl
      (local.get $4)
      (i32.const 2)
     )
     (i32.const 16)
    )
    (local.get $0)
   )
  )
  (local.get $5)
 )
 (func $filter_up (; 3 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load
    (i32.add
     (i32.shl
      (local.get $0)
      (i32.const 2)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (local.get $0)
      (i32.const 1)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.le_s
       (tee_local $2
        (i32.load
         (i32.add
          (i32.shl
           (tee_local $3
            (i32.div_s
             (i32.add
              (local.get $0)
              (i32.const -1)
             )
             (i32.const 2)
            )
           )
           (i32.const 2)
          )
          (i32.const 16)
         )
        )
       )
       (local.get $1)
      )
     )
     (i32.store
      (i32.add
       (i32.shl
        (local.get $0)
        (i32.const 2)
       )
       (i32.const 16)
      )
      (local.get $2)
     )
     (local.set $2
      (i32.gt_s
       (local.get $0)
       (i32.const 2)
      )
     )
     (local.set $0
      (local.get $3)
     )
     (br_if $label$2
      (local.get $2)
     )
     (br $label$0)
    )
   )
   (local.set $3
    (local.get $0)
   )
  )
  (i32.store
   (i32.add
    (i32.shl
     (local.get $3)
     (i32.const 2)
    )
    (i32.const 16)
   )
   (local.get $1)
  )
 )
 (func $minheap_insert (; 4 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
   (i32.const -1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $1
      (i32.load offset=12
       (i32.const 0)
      )
     )
     (i32.const 30)
    )
   )
   (i32.store
    (i32.add
     (i32.shl
      (local.get $1)
      (i32.const 2)
     )
     (i32.const 16)
    )
    (local.get $0)
   )
   (local.set $4
    (local.get $1)
   )
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (local.get $1)
      (i32.const 1)
     )
    )
    (local.set $3
     (local.get $1)
    )
    (block $label$2
     (loop $label$3
      (br_if $label$2
       (i32.le_s
        (tee_local $2
         (i32.load
          (i32.add
           (i32.shl
            (tee_local $4
             (i32.div_s
              (i32.add
               (local.get $3)
               (i32.const -1)
              )
              (i32.const 2)
             )
            )
            (i32.const 2)
           )
           (i32.const 16)
          )
         )
        )
        (local.get $0)
       )
      )
      (i32.store
       (i32.add
        (i32.shl
         (local.get $3)
         (i32.const 2)
        )
        (i32.const 16)
       )
       (local.get $2)
      )
      (local.set $2
       (i32.gt_s
        (local.get $3)
        (i32.const 2)
       )
      )
      (local.set $3
       (local.get $4)
      )
      (br_if $label$3
       (local.get $2)
      )
      (br $label$1)
     )
    )
    (local.set $4
     (local.get $3)
    )
   )
   (local.set $3
    (i32.const 0)
   )
   (i32.store offset=12
    (i32.const 0)
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (i32.store
    (i32.add
     (i32.shl
      (local.get $4)
      (i32.const 2)
     )
     (i32.const 16)
    )
    (local.get $0)
   )
  )
  (local.get $3)
 )
 (func $main (; 5 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (tee_local $1
    (i32.load offset=12
     (i32.const 0)
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $label$0
   (local.set $4
    (i32.const 30)
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (local.get $2)
      (i32.const 30)
     )
    )
    (i32.store
     (i32.add
      (i32.shl
       (local.get $2)
       (i32.const 2)
      )
      (i32.const 16)
     )
     (tee_local $0
      (i32.load
       (i32.add
        (i32.shl
         (local.get $3)
         (i32.const 2)
        )
        (i32.const 144)
       )
      )
     )
    )
    (local.set $5
     (local.get $2)
    )
    (block $label$2
     (br_if $label$2
      (i32.lt_s
       (local.get $2)
       (i32.const 1)
      )
     )
     (local.set $4
      (local.get $2)
     )
     (block $label$3
      (loop $label$4
       (br_if $label$3
        (i32.le_s
         (tee_local $1
          (i32.load
           (i32.add
            (i32.shl
             (tee_local $5
              (i32.div_s
               (i32.add
                (local.get $4)
                (i32.const -1)
               )
               (i32.const 2)
              )
             )
             (i32.const 2)
            )
            (i32.const 16)
           )
          )
         )
         (local.get $0)
        )
       )
       (i32.store
        (i32.add
         (i32.shl
          (local.get $4)
          (i32.const 2)
         )
         (i32.const 16)
        )
        (local.get $1)
       )
       (local.set $1
        (i32.gt_s
         (local.get $4)
         (i32.const 2)
        )
       )
       (local.set $4
        (local.get $5)
       )
       (br_if $label$4
        (local.get $1)
       )
       (br $label$2)
      )
     )
     (local.set $5
      (local.get $4)
     )
    )
    (i32.store offset=12
     (i32.const 0)
     (tee_local $1
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
    )
    (i32.store
     (i32.add
      (i32.shl
       (local.get $5)
       (i32.const 2)
      )
      (i32.const 16)
     )
     (local.get $0)
    )
    (local.set $4
     (local.get $1)
    )
   )
   (local.set $2
    (local.get $4)
   )
   (br_if $label$0
    (i32.ne
     (tee_local $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (i32.const 9)
    )
   )
  )
  (local.set $0
   (i32.const 30)
  )
  (block $label$5
   (block $label$6
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eq
        (local.get $1)
        (i32.const 30)
       )
      )
      (i32.store
       (i32.add
        (i32.shl
         (local.get $1)
         (i32.const 2)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (local.set $5
       (local.get $1)
      )
      (block $label$9
       (br_if $label$9
        (i32.lt_s
         (local.get $1)
         (i32.const 1)
        )
       )
       (local.set $4
        (local.get $1)
       )
       (block $label$10
        (loop $label$11
         (br_if $label$10
          (i32.lt_s
           (tee_local $0
            (i32.load
             (i32.add
              (i32.shl
               (tee_local $5
                (i32.div_s
                 (i32.add
                  (local.get $4)
                  (i32.const -1)
                 )
                 (i32.const 2)
                )
               )
               (i32.const 2)
              )
              (i32.const 16)
             )
            )
           )
           (i32.const 16)
          )
         )
         (i32.store
          (i32.add
           (i32.shl
            (local.get $4)
            (i32.const 2)
           )
           (i32.const 16)
          )
          (local.get $0)
         )
         (local.set $0
          (i32.gt_s
           (local.get $4)
           (i32.const 2)
          )
         )
         (local.set $4
          (local.get $5)
         )
         (br_if $label$11
          (local.get $0)
         )
         (br $label$9)
        )
       )
       (local.set $5
        (local.get $4)
       )
      )
      (i32.store offset=12
       (i32.const 0)
       (tee_local $0
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (i32.store
       (i32.add
        (i32.shl
         (local.get $5)
         (i32.const 2)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (br_if $label$7
       (i32.lt_s
        (local.get $1)
        (i32.const 0)
       )
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (local.set $4
      (i32.const 16)
     )
     (local.set $5
      (i32.const 1)
     )
     (block $label$12
      (loop $label$13
       (br_if $label$12
        (i32.eq
         (i32.load
          (local.get $4)
         )
         (i32.const 10)
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.const 4)
        )
       )
       (local.set $5
        (i32.add
         (local.get $5)
         (i32.const 2)
        )
       )
       (br_if $label$13
        (i32.lt_s
         (tee_local $1
          (i32.add
           (local.get $1)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
       )
      )
      (local.set $2
       (local.get $0)
      )
      (br $label$5)
     )
     (br_if $label$6
      (i32.eq
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.store offset=12
      (i32.const 0)
      (tee_local $2
       (i32.add
        (local.get $0)
        (i32.const -1)
       )
      )
     )
     (i32.store
      (local.get $4)
      (tee_local $3
       (i32.load
        (i32.add
         (i32.shl
          (local.get $2)
          (i32.const 2)
         )
         (i32.const 16)
        )
       )
      )
     )
     (block $label$14
      (block $label$15
       (br_if $label$15
        (i32.gt_s
         (local.get $5)
         (tee_local $0
          (i32.add
           (local.get $0)
           (i32.const -2)
          )
         )
        )
       )
       (loop $label$16
        (block $label$17
         (block $label$18
          (br_if $label$18
           (i32.ge_s
            (local.get $5)
            (local.get $0)
           )
          )
          (local.set $4
           (select
            (tee_local $4
             (i32.add
              (local.get $5)
              (i32.const 1)
             )
            )
            (local.get $5)
            (i32.gt_s
             (i32.load
              (i32.add
               (i32.shl
                (local.get $5)
                (i32.const 2)
               )
               (i32.const 16)
              )
             )
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
          (br $label$17)
         )
         (local.set $4
          (local.get $5)
         )
        )
        (br_if $label$15
         (i32.le_s
          (local.get $3)
          (tee_local $5
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
        (i32.store
         (i32.add
          (i32.shl
           (local.get $1)
           (i32.const 2)
          )
          (i32.const 16)
         )
         (local.get $5)
        )
        (local.set $1
         (local.get $4)
        )
        (br_if $label$16
         (i32.le_s
          (tee_local $5
           (i32.or
            (i32.shl
             (local.get $4)
             (i32.const 1)
            )
            (i32.const 1)
           )
          )
          (local.get $0)
         )
        )
        (br $label$14)
       )
      )
      (local.set $4
       (local.get $1)
      )
     )
     (i32.store
      (i32.add
       (i32.shl
        (local.get $4)
        (i32.const 2)
       )
       (i32.const 16)
      )
      (local.get $3)
     )
     (br $label$5)
    )
    (return
     (i32.const -1)
    )
   )
   (local.set $2
    (local.get $0)
   )
  )
  (block $label$19
   (block $label$20
    (br_if $label$20
     (i32.lt_s
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.set $5
     (i32.const 0)
    )
    (local.set $4
     (i32.const 16)
    )
    (loop $label$21
     (br_if $label$19
      (i32.eq
       (i32.load
        (local.get $4)
       )
       (i32.const 15)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 4)
      )
     )
     (br_if $label$21
      (i32.lt_s
       (tee_local $5
        (i32.add
         (local.get $5)
         (i32.const 1)
        )
       )
       (local.get $2)
      )
     )
    )
   )
   (return
    (i32.const -1)
   )
  )
  (local.get $5)
 )
)
