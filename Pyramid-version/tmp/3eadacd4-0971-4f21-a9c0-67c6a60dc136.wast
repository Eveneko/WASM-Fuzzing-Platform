(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\0c\00\00\00\0d\00\00\00-\00\00\00")
 (export "memory" (memory $0))
 (export "recurbinary" (func $recurbinary))
 (export "main" (func $main))
 (func $recurbinary (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.const -1)
  )
  (block $label$0
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
    (set_local $0
     (i32.add
      (local.get $0)
      (i32.const 4)
     )
    )
    (br_if $label$1
     (i32.le_s
      (tee_local $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 8)
     )
    )
   )
   (return
    (i32.const 1)
   )
  )
  (i32.const 0)
 )
 (func $main (; 1 ;) (result i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (call $recurbinary
      (i32.const 16)
      (i32.const 1)
     )
    )
    (br_if $label$0
     (i32.eqz
      (call $recurbinary
       (i32.const 16)
       (i32.const 6)
      )
     )
    )
   )
   (return
    (i32.const 1)
   )
  )
  (i32.const 0)
 )
)
