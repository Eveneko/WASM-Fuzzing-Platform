(module
  (type $0 (func (param i32 i32 i32) (result i32)))
  (type $1 (func (result i32)))
  (memory $0 1)
  (func $0 (type 0) (local i32 i32 i32 i32 i32 i32) (unreachable) (unreachable))
  (func $1
    (type 1)
    (local i32 i32 i32 i32 i32 i32)
    (i32.const 9)
    (local.set 2)
    (i32.const 1)
    (local.set 4)
    (block
      (loop
        (i32.const 9)
        (local.get 4)
        (i32.const 2)
        (i32.shl)
        (i32.const 16)
        (i32.add)
        (i32.load)
        (local.tee 0)
        (i32.sub)
        (local.set 1)
        (block
          (block
            (loop
              (local.get 1)
              (local.get 2)
              (i32.const 2)
              (i32.shl)
              (i32.const 16)
              (i32.add)
              (i32.load)
              (local.get 0)
              (i32.sub)
              (i32.div_s)
              (local.get 2)
              (local.get 4)
              (i32.sub)
              (i32.mul)
              (local.tee 3)
              (local.get 4)
              (i32.add)
              (local.tee 5)
              (i32.const -7)
              (i32.add)
              (i32.const 1)
              (i32.gt_u)
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
          (local.get 5)
          (i32.const 5)
          (i32.gt_u)
          (br_if 2)
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
      (unreachable)
      (unreachable)
    )
    (local.get 5)
    (i32.const 23)
    (i32.add)
  )
  (export "memory" (memory 0))
  (export "Binary_Search_insert" (func 0))
  (export "main" (func 1))
  (data
    0
    (offset (i32.const 16))
    "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00"
    "\06\00\00\00\07\00\00\00\09\00\00\00\0b\00\00\00"
    "\0f\00\00\00"
  )
)
(assert_return (invoke "main") (i32.const 0))
