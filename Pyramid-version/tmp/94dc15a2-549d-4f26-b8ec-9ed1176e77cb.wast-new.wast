
(module
 (table 0 anyfunc)

 (memory $0 1)

 (data 
  (i32.const 16)
 )

 (export "memory" 
  (memory $0)
 )

 (export "verifySequenceOfBST" 
  (func $verifySequenceOfBST)
 )

 (export "main" 
  (func $main)
 )

 (func $verifySequenceOfBST 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (local $2 i32)

  (local $3 i32)

  (local $4 i32)

  (local $5 i32)

  (set_local $3
   (i32.load
    (i32.add
     (get_local $0)

     (i32.shl
      (tee_local $2
       (i32.add
        (get_local $1)

        (i32.const -1)
       )
      )

      (i32.const 2)
     )
    )
   )
  )

  (set_local $4
   (i32.const 0)
  )

  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $1)

     (i32.const 2)
    )
   )

   (set_local $4
    (i32.const 0)
   )

   (set_local $1
    (get_local $0)
   )

   (loop $label$1
    (br_if $label$0
     (i32.gt_s
      (i32.load
       (get_local $1)
      )

      (get_local $3)
     )
    )

    (set_local $1
     (i32.add
      (get_local $1)

      (i32.const 4)
     )
    )

    (br_if $label$1
     (i32.lt_s
      (tee_local $4
       (i32.add
        (get_local $4)

        (i32.const 1)
       )
      )

      (get_local $2)
     )
    )
   )
  )

  (block $label$2
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.ge_s
       (get_local $4)

       (get_local $2)
      )
     )

     (set_local $1
      (i32.add
       (get_local $0)

       (i32.shl
        (get_local $4)

        (i32.const 2)
       )
      )
     )

     (set_local $5
      (get_local $4)
     )

     (loop $label$5
      (br_if $label$3
       (i32.lt_s
        (i32.load
         (get_local $1)
        )

        (get_local $3)
       )
      )

      (set_local $1
       (i32.add
        (get_local $1)

        (i32.const 4)
       )
      )

      (br_if $label$5
       (i32.lt_s
        (tee_local $5
         (i32.add
          (get_local $5)

          (i32.const 1)
         )
        )

        (get_local $2)
       )
      )
     )
    )

    (set_local $1
     (i32.const 1)
    )

    (br_if $label$2
     (i32.lt_s
      (get_local $4)

      (i32.const 1)
     )
    )

    (return
     (i32.ne
      (call $verifySequenceOfBST
       (get_local $0)

       (get_local $4)
      )

      (i32.const 0)
     )
    )
   )

   (set_local $1
    (i32.const 0)
   )
  )

  (get_local $1)

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (i32.add
   (call $verifySequenceOfBST
    (i32.const 16)

    (i32.const 7)
   )

   (i32.const -1)
  )

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )
)
