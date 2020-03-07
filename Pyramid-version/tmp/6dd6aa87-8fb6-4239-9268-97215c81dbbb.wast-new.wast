
(module
 (memory $0 1)

 (export "memory" 
  (memory $0)
 )

 (export "t1" 
  (func $t1)
 )

 (export "t2" 
  (func $t2)
 )

 (export "t3" 
  (func $t3)
 )

 (export "t4" 
  (func $t4)
 )

 (export "t5" 
  (func $t5)
 )

 (export "t6a" 
  (func $t6a)
 )

 (export "t6" 
  (func $t6)
 )

 (export "t7" 
  (func $t7)
 )

 (export "main" 
  (func $main)
 )

 (func $t1 
  (; 0 ;)

  (result i32)

  (i32.const 0)
 )

 (func $t2 
  (; 1 ;)

  (result i32)

  (i32.const 0)
 )

 (func $t3 
  (; 2 ;)

  (result i32)

  (i32.const 0)
 )

 (func $t4 
  (; 3 ;)

  (result i32)

  (i32.const 0)
 )

 (func $t5 
  (; 4 ;)

  (result i32)

  (i32.const 2)

  (block
   (loop
    (br_if 1 
     (i32.const 1)
    )

    (br 0)
   )
  )
 )

 (func $t6a 
  (; 5 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (i32.sub
   (local.get $0)

   (i32.load
    (i32.add
     (local.get $1)

     (i32.const 16)
    )
   )
  )
 )

 (func $t6 
  (; 6 ;)

  (result i32)

  (local $0 i32)

  (local.get $0)
 )

 (func $t7 
  (; 7 ;)

  (result i32)

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

 (func $main 
  (; 8 ;)

  (result i32)

  (local $0 i32)

  (local.get $0)
 )
)
