(module
  (type $0 (func (param i64) (result i64)))
  (memory $0 1)
  (func $0
    (type 0)
    (local i64)
    (i64.const 1)
    (local.set 1)
    (block
      (loop
        (local.get 0)
        (i64.eqz)
        (br_if 1)
        (local.get 0)
        (local.get 1)
        (i64.mul)
        (local.set 1)
        (local.get 0)
        (i64.const 1)
        (i64.sub)
        (local.set 0)
        (br 0)
      )
    )
    (local.get 1)
  )
  (func $1
    (type 0)
    (local i64 i64)
    (i64.const 1)
    (local.set 1)
    (i64.const 2)
    (local.set 2)
    (block
      (loop
        (local.get 2)
        (local.get 0)
        (i64.gt_u)
        (br_if 1)
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
      )
    )
    (local.get 1)
  )
  (export "while" (func 0))
  (export "for" (func 1))
)
(assert_return (invoke "while" (i64.const 5)) (i64.const 120))
(assert_return (invoke "for" (i64.const 1)) (i64.const 1))