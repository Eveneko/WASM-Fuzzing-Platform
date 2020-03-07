
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "f" 
  (func $f)
 )

 (export "add" 
  (func $add)
 )

 (export "main" 
  (func $main)
 )

 (func $f 
  (; 0 ;)

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )

 (func $add 
  (; 1 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (i32.add
   (local.get $1)

   (local.get $0)
  )

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )

 (func $main 
  (; 2 ;)

  (result i32)

  (i32.gt_s
   (call $add
    (i32.const 1)

    (i32.const 1)
   )

   (call $add
    (i32.const 4)

    (i32.const 8)
   )
  )

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
