(module
  (type $0 (func (param i32 i32 i32) (result i32)))
  (type $1 (func (result i32)))
  (memory $0 1)
  (func $0
    (type 0)
    (local i32 i32 i32 i32 i32 i32 i32)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
    (unreachable)
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
  (func $1
    (type 1)
    (local i32 i32 i32 i32 i32 i32 i32)
    (i32.const -1)
    (local.set 5)
    (i32.const 12)
    (local.set 2)
    (loop
      (local.get 5)
      (i32.const 1)
      (i32.add)
      (local.set 5)
      (local.get 2)
      (i32.const 4)
      (i32.add)
      (local.tee 2)
      (i32.load)
      (i32.const 11)
      (i32.lt_s)
      (br_if 0)
    )
    (i32.const 10)
    (local.set 4)
    (i32.const 56)
    (local.set 3)
    (loop
      (local.get 3)
      (i32.const 0)
      (i32.load offset=56)
      (i32.store)
      (local.get 3)
      (i32.const 4)
      (i32.add)
      (local.set 3)
      (local.get 4)
      (i32.const 1)
      (i32.add)
      (local.tee 4)
      (local.get 2)
      (i32.load)
      (i32.lt_s)
      (br_if 0)
    )
    (i32.const 1)
    (local.set 3)
    (i32.const 10)
    (local.set 6)
    (block
      (block
        (loop
          (local.get 3)
          (local.set 4)
          (local.get 5)
          (i32.const 2)
          (i32.shl)
          (i32.const 12)
          (i32.add)
          (local.set 2)
          (local.get 5)
          (i32.const -2)
          (i32.add)
          (local.set 5)
          (block
            (loop
              (local.get 2)
              (i32.load)
              (local.get 4)
              (i32.add)
              (local.tee 3)
              (i32.const -1)
              (i32.add)
              (local.tee 0)
              (i32.const 2)
              (i32.shl)
              (i32.const 16)
              (i32.add)
              (i32.load)
              (local.tee 1)
              (i32.const 9)
              (i32.lt_s)
              (br_if 1)
              (local.get 2)
              (i32.const -4)
              (i32.add)
              (local.set 2)
              (local.get 5)
              (i32.const -1)
              (i32.add)
              (local.set 5)
              (local.get 4)
              (local.get 3)
              (i32.const -2)
              (i32.add)
              (local.tee 6)
              (i32.le_s)
              (br_if 0)
              (unreachable)
            )
          )
          (local.get 1)
          (i32.const 8)
          (i32.eq)
          (br_if 2)
          (local.get 3)
          (local.get 6)
          (i32.le_s)
          (br_if 0)
        )
        (unreachable)
        (unreachable)
      )
      (unreachable)
      (unreachable)
    )
    (local.get 0)
    (i32.const 10)
    (local.get 0)
    (i32.const 10)
    (i32.lt_s)
    (select)
    (i32.const -6)
    (i32.add)
  )
  (export "memory" (memory 0))
  (export "Fibonacci_Search" (func 0))
  (export "main" (func 1))
  (data
    0
    (offset (i32.const 16))
    "\00\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00"
    "\03\00\00\00\05\00\00\00\08\00\00\00\0d\00\00\00"
    "\15\00\00\00\22\00\00\00"
  )
)