(module
  (type $0 (func (result i32)))
  (type $1 (func (param i32) (result i32)))
  (memory $0 1)
  (func $0 (type 0) (i32.const 16) (call 1) (call 1))
  (func $1
    (type 1)
    (local i32 i32 i32 i32 i32 i32 i32)
    (block
      (loop
        (block
          (local.get 0)
          (i32.load8_u)
          (local.tee 1)
          (i32.const 9)
          (i32.eq)
          (br_if 0)
          (local.get 1)
          (i32.const 32)
          (i32.ne)
          (br_if 2)
        )
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
        (unreachable)
      )
    )
    (i32.const 0)
    (local.set 7)
    (i32.const 0)
    (local.set 1)
    (block
      (local.get 0)
      (i32.load8_u)
      (local.tee 4)
      (i32.eqz)
      (br_if 0)
      (local.get 0)
      (i32.const 1)
      (i32.add)
      (local.set 2)
      (local.get 4)
      (i32.const 24)
      (i32.shl)
      (i32.const 24)
      (i32.shr_s)
      (local.set 3)
      (i32.const 0)
      (local.set 6)
      (i32.const 0)
      (local.set 5)
      (block
        (block
          (loop
            (local.get 5)
            (local.set 1)
            (local.get 6)
            (local.set 7)
            (local.get 2)
            (local.set 0)
            (block
              (block
                (block
                  (block
                    (local.get 3)
                    (i32.const -48)
                    (i32.add)
                    (local.tee 6)
                    (i32.const 9)
                    (i32.gt_u)
                    (br_if 0)
                    (local.get 7)
                    (i32.eqz)
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
                    (unreachable)
                    (unreachable)
                  )
                  (block
                    (local.get 4)
                    (i32.const 255)
                    (i32.and)
                    (local.tee 6)
                    (i32.const 43)
                    (i32.eq)
                    (br_if 0)
                    (local.get 6)
                    (i32.const 45)
                    (i32.ne)
                    (br_if 7)
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
                (local.get 1)
                (i32.const -2_147_483_601)
                (local.get 3)
                (i32.sub)
                (i32.const 10)
                (i32.div_s)
                (i32.gt_s)
                (br_if 4)
              )
              (local.get 6)
              (local.get 1)
              (i32.const 10)
              (i32.mul)
              (i32.add)
              (local.set 5)
              (local.get 7)
              (local.set 6)
            )
            (local.get 0)
            (i32.const 1)
            (i32.add)
            (local.set 2)
            (local.get 0)
            (i32.load8_u)
            (local.tee 4)
            (i32.const 24)
            (i32.shl)
            (i32.const 24)
            (i32.shr_s)
            (local.set 3)
            (local.get 6)
            (local.set 7)
            (local.get 5)
            (local.set 1)
            (local.get 4)
            (br_if 0)
            (unreachable)
          )
        )
        (unreachable)
        (unreachable)
        (unreachable)
      )
      (unreachable)
      (unreachable)
      (unreachable)
      (unreachable)
    )
    (i32.const 0)
    (local.get 1)
    (i32.sub)
    (local.get 1)
    (local.get 7)
    (select)
  )
  (export "memory" (memory 0))
  (export "main" (func 0))
  (data 0 (offset (i32.const 16)) "\37\38\20\77\69\74\68\20\77\6f\72\64\73\00")
)