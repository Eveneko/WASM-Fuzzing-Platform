(module
  (type $0 (func (param f32 f32) (result f32)))
  (type $1 (func (result i32)))
  (memory $0 1)
  (func $0
    (type 0)
    (local.get 0)
    (local.get 0)
    (f32.add)
    (local.get 1)
    (f32.sub)
  )
  (func $1
    (type 1)
    (local f32 f32)
    (block
      (f32.const 234.341_995_239_257_81)
      (f32.const 34.431_999_206_542_969)
      (call 0)
      (local.tee 0)
      (local.get 0)
      (f32.add)
      (f32.const 3_322.431_884_765_625)
      (f32.const 34.200_000_762_939_453)
      (call 0)
      (local.tee 1)
      (f32.sub)
      (local.get 0)
      (local.get 1)
      (call 0)
      (f32.sub)
      (local.tee 0)
      (f32.const -1)
      (f32.gt)
      (br_if 0)
      (unreachable)
      (unreachable)
      (unreachable)
      (unreachable)
    )
    (local.get 0)
    (i32.trunc_f32_s)
  )
  (export "memory" (memory 0))
  (export "func" (func 0))
  (export "main" (func 1))
)