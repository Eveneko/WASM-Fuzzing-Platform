(module
 (memory $0 1)
 (data (i32.const 12) "\00\00\00\00")
 (export "memory" (memory $0))
 (export "equal" (func $equal))
 (export "power_rec" (func $power_rec))
 (export "power" (func $power))
 (export "main" (func $main))
 (func $equal (; 0 ;) (param $0 f64) (param $1 f64) (result i32)
  (i32.and
   (f64.lt
    (tee_local $0
     (f64.sub
      (local.get $0)
      (local.get $1)
     )
    )
    (f64.const 1e-07)
   )
   (f64.gt
    (local.get $0)
    (f64.const -1e-07)
   )
  )
 )
 (func $power_rec (; 1 ;) (param $0 f64) (param $1 i32) (result f64)
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
       (call $power_rec
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
 (func $power (; 2 ;) (param $0 f64) (param $1 i32) (result f64)
  (local $2 i32)
  (local.set $2
   (call $equal
    (local.get $0)
    (f64.const 0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.gt_s
     (local.get $1)
     (i32.const -1)
    )
   )
   (br_if $label$0
    (i32.eqz
     (local.get $2)
    )
   )
   (i32.store offset=12
    (i32.const 0)
    (i32.const 1)
   )
   (return
    (f64.const 0)
   )
  )
  (select
   (f64.div
    (f64.const 1)
    (tee_local $0
     (call $power_rec
      (local.get $0)
      (i32.xor
       (i32.add
        (local.get $1)
        (tee_local $2
         (i32.shr_s
          (local.get $1)
          (i32.const 31)
         )
        )
       )
       (local.get $2)
      )
     )
    )
   )
   (local.get $0)
   (i32.lt_s
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $main (; 3 ;) (result i32)
  (i32.trunc_s/f64
   (f64.add
    (call $power
     (f64.const 4.4)
     (i32.const 3)
    )
    (f64.const -85)
   )
  )
 )
)
