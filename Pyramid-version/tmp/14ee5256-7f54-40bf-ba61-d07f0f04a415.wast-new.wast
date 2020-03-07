
(module
 (memory $0 1)

 (data 
  (i32.const 12)
 )

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

  (local $0 i32)

  (i32.store offset=12
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 48)
    )
   )

   (i32.add
    (get_local $0)

    (i32.const 16)
   )
  )

  (i32.store offset=16
   (get_local $0)

   (i32.const 1)
  )

  (i32.sub
   (i32.const 1)

   (i32.load offset=16
    (get_local $0)
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

 (func $t2 
  (; 1 ;)

  (result i32)

  (local $0 i32)

  (i32.store offset=12
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 48)
    )
   )

   (i32.or
    (i32.add
     (get_local $0)

     (i32.const 16)
    )

    (i32.const 12)
   )
  )

  (i32.store offset=28
   (get_local $0)

   (i32.const 1)
  )

  (i32.store offset=8
   (get_local $0)

   (i32.add
    (get_local $0)

    (i32.const 16)
   )
  )

  (i32.store
   (i32.load offset=12
    (get_local $0)
   )

   (i32.const 32)
  )

  (i32.sub
   (i32.const 32)

   (i32.load offset=28
    (get_local $0)
   )
  )
 )

 (func $t3 
  (; 2 ;)

  (result i32)

  (local $0 i32)

  (i32.store offset=44
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 96)
    )
   )

   (i32.const 62)
  )

  (i32.store offset=12
   (get_local $0)

   (i32.add
    (get_local $0)

    (i32.const 16)
   )
  )

  (i32.const 0)
 )

 (func $t4 
  (; 3 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (local $2 i32)

  (local $3 i32)

  (i32.store
   (i32.add
    (tee_local $3
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )

      (i32.const 16)
     )
    )

    (i32.const 12)
   )

   (tee_local $0
    (i32.load offset=20
     (i32.const 0)
    )
   )
  )

  (i32.store
   (i32.add
    (get_local $3)

    (i32.const 8)
   )

   (tee_local $1
    (i32.load offset=16
     (i32.const 0)
    )
   )
  )

  (i32.store offset=4
   (get_local $3)

   (tee_local $2
    (i32.load offset=12
     (i32.const 0)
    )
   )
  )

  (i32.sub
   (i32.const 6)

   (i32.add
    (i32.add
     (get_local $2)

     (get_local $1)
    )

    (get_local $0)
   )
  )
 )

 (func $t5 
  (; 4 ;)

  (result i32)

  (local $0 i32)

  (i32.store offset=32
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 48)
    )
   )

   (i32.const 2)
  )

  (i32.store offset=20
   (get_local $0)

   (i32.const 1)
  )

  (i32.store offset=12
   (get_local $0)

   (i32.add
    (get_local $0)

    (i32.const 16)
   )
  )

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

  (local $2 i32)

  (i32.store offset=12
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 16)
    )
   )

   (get_local $0)
  )

  (i32.store offset=8
   (get_local $2)

   (get_local $1)
  )

  (i32.sub
   (i32.load offset=12
    (get_local $2)
   )

   (i32.load
    (i32.add
     (get_local $1)

     (i32.const 16)
    )
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

 (func $t6 
  (; 6 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (i32.store offset=4
   (i32.const 0)

   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 48)
    )
   )
  )

  (i32.store offset=32
   (get_local $1)

   (i32.const 65)
  )

  (i32.store offset=12
   (get_local $1)

   (i32.add
    (get_local $1)

    (i32.const 16)
   )
  )

  (drop
   (call $t6a
    (i32.const 65)

    (i32.add
     (get_local $1)

     (i32.const 16)
    )
   )
  )

  (set_local $0
   (i32.load offset=44
    (get_local $1)
   )
  )

  (i32.store offset=4
   (i32.const 0)

   (i32.add
    (get_local $1)

    (i32.const 48)
   )
  )

  (get_local $0)
 )

 (func $t7 
  (; 7 ;)

  (result i32)

  (i32.store offset=32
   (i32.sub
    (i32.load offset=4
     (i32.const 0)
    )

    (i32.const 48)
   )

   (i32.const 68)
  )

  (i32.const 0)
 )

 (func $main 
  (; 8 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (i32.store offset=4
   (i32.const 0)

   (tee_local $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 16)
    )
   )
  )

  (i32.store offset=12
   (get_local $1)

   (i32.const 0)
  )

  (i32.store offset=8
   (get_local $1)

   (i32.add
    (call $t1)

    (call $t2)
   )
  )

  (i32.store offset=4
   (get_local $1)

   (tee_local $0
    (i32.sub
     (call $t3)

     (call $t4)
    )
   )
  )

  (i32.store
   (get_local $1)

   (tee_local $0
    (i32.add
     (i32.add
      (i32.add
       (i32.load offset=8
        (get_local $1)
       )

       (get_local $0)
      )

      (call $t6)
     )

     (call $t7)
    )
   )
  )

  (i32.store offset=4
   (i32.const 0)

   (i32.add
    (get_local $1)

    (i32.const 16)
   )
  )

  (get_local $0)

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
