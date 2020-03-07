(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "realloc" (func $realloc (param i32 i32) (result i32)))
 (memory $0 1)
 (export "memory" (memory $0))
 (export "serialize" (func $serialize))
 (export "main" (func $main))
 (func $serialize (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (local.get $0)
    )
   )
   (i32.store offset=16
    (i32.const 0)
    (i32.const 0)
   )
   (i32.store offset=12
    (i32.const 0)
    (i32.const 0)
   )
   (i32.store offset=20
    (i32.const 0)
    (i32.const 0)
   )
   (call $do_seri
    (local.get $0)
   )
   (i32.store
    (local.get $1)
    (i32.load offset=12
     (i32.const 0)
    )
   )
   (return
    (i32.load offset=20
     (i32.const 0)
    )
   )
  )
  (i32.store
   (local.get $1)
   (i32.const 0)
  )
  (i32.const 0)
 )
 (func $do_seri (; 2 ;) (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (local.get $0)
    )
   )
   (loop $label$1
    (call $add
     (i32.load
      (local.get $0)
     )
    )
    (call $do_seri
     (i32.load offset=4
      (local.get $0)
     )
    )
    (br_if $label$1
     (local.tee $0
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
   )
  )
  (call $add
   (i32.const -1)
  )
 )
 (func $main (; 3 ;) (result i32)
  (i32.const 0)
 )
 (func $add (; 4 ;) (param $0 i32)
  (local $1 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (i32.load offset=12
      (i32.const 0)
     )
     (local.tee $1
      (i32.load offset=16
       (i32.const 0)
      )
     )
    )
   )
   (i32.store offset=16
    (i32.const 0)
    (local.tee $1
     (i32.add
      (local.get $1)
      (i32.const 16)
     )
    )
   )
   (i32.store offset=20
    (i32.const 0)
    (call $realloc
     (i32.load offset=20
      (i32.const 0)
     )
     (i32.shl
      (local.get $1)
      (i32.const 2)
     )
    )
   )
  )
  (i32.store offset=12
   (i32.const 0)
   (i32.add
    (local.tee $1
     (i32.load offset=12
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (i32.store
   (i32.add
    (i32.load offset=20
     (i32.const 0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $0)
  )
 )
)
