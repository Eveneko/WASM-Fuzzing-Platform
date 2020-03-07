(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "power" (func $power))
 (export "main" (func $main))
 (func $power (; 0 ;) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (local.get $1)
     )
    )
    (br_if $label$0
     (i32.ne
      (local.get $1)
      (i32.const 1)
     )
    )
    (return
     (local.get $0)
    )
   )
   (return
    (f64.const 1)
   )
  )
  (select
   (f64.mul
    (tee_local $2
     (f64.mul
      (tee_local $2
       (call $power
        (local.get $0)
        (i32.shr_u
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (local.get $2)
     )
    )
    (local.get $0)
   )
   (local.get $2)
   (i32.and
    (local.get $1)
    (i32.const 1)
   )
  )
 )
 (func $main (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (i32.trunc_s/f64
    (call $power
     (f64.const 3)
     (i32.const 3)
    )
   )
   (i32.const -27)
  )
 )
)
