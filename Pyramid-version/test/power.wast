(module
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $abort))
 (memory $0 1)
 (export "memory" (memory $0))
 (export "power" (func $power))
 (export "main" (func $main))
 (func $power (; 1 ;) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.or
      (f64.gt
       (tee_local $2
        (f64.abs
         (local.get $0)
        )
       )
       (f64.const 1e-05)
      )
      (f64.ne
       (local.get $2)
       (local.get $2)
      )
     )
    )
    (br_if $label$0
     (i32.le_s
      (local.get $1)
      (i32.const 0)
     )
    )
   )
   (return
    (select
     (f64.div
      (f64.const 1)
      (tee_local $2
       (call $do_pow
        (local.get $0)
        (i32.xor
         (i32.add
          (local.get $1)
          (tee_local $3
           (i32.shr_s
            (local.get $1)
            (i32.const 31)
           )
          )
         )
         (local.get $3)
        )
       )
      )
     )
     (local.get $2)
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $do_pow (; 2 ;) (param $0 f64) (param $1 i32) (result f64)
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
  (block $label$2
   (br_if $label$2
    (i32.and
     (local.get $1)
     (i32.const 1)
    )
   )
   (return
    (f64.mul
     (tee_local $0
      (call $do_pow
       (local.get $0)
       (i32.shr_u
        (local.get $1)
        (i32.const 1)
       )
      )
     )
     (local.get $0)
    )
   )
  )
  (f64.mul
   (call $do_pow
    (local.get $0)
    (i32.add
     (local.get $1)
     (i32.const -1)
    )
   )
   (local.get $0)
  )
 )
 (func $main (; 3 ;) (result i32)
  (i32.trunc_s/f64
   (f64.add
    (call $do_pow
     (f64.const 1)
     (i32.const 4)
    )
    (f64.const -1)
   )
  )
 )
)
