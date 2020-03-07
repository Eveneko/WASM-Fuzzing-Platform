(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "malloc" (func $malloc (param i32) (result i32)))
 (import "env" "memset" (func $memset (param i32 i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "countPrimes" (func $countPrimes))
 (export "main" (func $main))
 (func $countPrimes (; 2 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $0)
     (i32.const 3)
    )
   )
   (set_local $1
    (call $memset
     (call $malloc
      (get_local $0)
     )
     (i32.const 0)
     (get_local $0)
    )
   )
   (set_local $6
    (i32.shr_u
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $2
    (i32.const 9)
   )
   (br_if $label$0
    (i32.lt_s
     (get_local $0)
     (i32.const 9)
    )
   )
   (set_local $5
    (i32.const 3)
   )
   (loop $label$1
    (block $label$2
     (br_if $label$2
      (i32.load8_u
       (i32.add
        (get_local $1)
        (get_local $5)
       )
      )
     )
     (br_if $label$2
      (i32.ge_s
       (get_local $2)
       (get_local $0)
      )
     )
     (set_local $3
      (i32.shl
       (get_local $5)
       (i32.const 1)
      )
     )
     (loop $label$3
      (block $label$4
       (br_if $label$4
        (i32.load8_u
         (tee_local $4
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
       )
       (i32.store8
        (get_local $4)
        (i32.const 1)
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const -1)
        )
       )
      )
      (br_if $label$3
       (i32.lt_s
        (tee_local $2
         (i32.add
          (get_local $2)
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
    )
    (br_if $label$1
     (i32.le_s
      (tee_local $2
       (i32.mul
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (get_local $0)
     )
    )
   )
  )
  (get_local $6)
 )
 (func $main (; 3 ;) (result i32)
  (i32.add
   (call $countPrimes
    (i32.const 7698)
   )
   (i32.const -976)
  )
 )
)
