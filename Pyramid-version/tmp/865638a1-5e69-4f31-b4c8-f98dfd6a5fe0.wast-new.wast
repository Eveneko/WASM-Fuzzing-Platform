
(module
 (type $FUNCSIG$v 
  (func)
 )

 (table 2 2 anyfunc)

 (elem 
  (i32.const 0)
 )

 (memory $0 1)

 (data 
  (i32.const 12)
 )

 (data 
  (i32.const 16)
 )

 (export "memory" 
  (memory $0)
 )

 (export "f" 
  (func $f)
 )

 (export "ff" 
  (func $ff)
 )

 (export "main" 
  (func $main)
 )

 (func $f 
  (; 0 ;)

  (type $FUNCSIG$v)

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )

 (func $ff 
  (; 1 ;)

  (param $0 i32)

  (param $1 i32)

  (call_indirect 
   (type $FUNCSIG$v)

   (get_local $0)
  )

  (call_indirect 
   (type $FUNCSIG$v)

   (get_local $0)
  )

  (call_indirect 
   (type $FUNCSIG$v)

   (get_local $0)
  )

  (call_indirect 
   (type $FUNCSIG$v)

   (get_local $1)
  )

  (call_indirect 
   (type $FUNCSIG$v)

   (get_local $1)
  )

  (call_indirect 
   (type $FUNCSIG$v)

   (get_local $1)
  )
 )

 (func $main 
  (; 2 ;)

  (result i32)

  (call_indirect 
   (type $FUNCSIG$v)

   (i32.load offset=12
    (i32.const 0)
   )
  )

  (call_indirect 
   (type $FUNCSIG$v)

   (i32.load offset=12
    (i32.const 0)
   )
  )

  (call_indirect 
   (type $FUNCSIG$v)

   (i32.load offset=12
    (i32.const 0)
   )
  )

  (i32.const 0)

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )

 (func $__wasm_nullptr 
  (; 3 ;)

  (type $FUNCSIG$v)

  (unreachable)

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )
)
