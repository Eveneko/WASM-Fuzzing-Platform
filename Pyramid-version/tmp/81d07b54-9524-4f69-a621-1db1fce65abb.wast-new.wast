
(module
 (memory $0 1)

 (data 
  (i32.const 12)
 )

 (export "memory" 
  (memory $0)
 )

 (export "main" 
  (func $main)
 )

 (func $main 
  (; 0 ;)

  (result i32)

  (local $0 i32)

  (local $1 i32)

  (local $2 i32)

  (local $3 i32)

  (local $4 i32)

  (local $5 i32)

  (local $6 i32)

  (local $7 i32)

  (i32.store offset=4
   (i32.const 0)

   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )

     (i32.const 16)
    )
   )
  )

  (i32.store offset=12
   (local.get $7)

   (i32.const 0)
  )

  (set_local $0
   (call $t1)
  )

  (set_local $1
   (call $t2)
  )

  (set_local $2
   (call $t3)
  )

  (set_local $3
   (call $t4)
  )

  (set_local $4
   (call $t5)
  )

  (set_local $5
   (call $t6)
  )

  (set_local $6
   (call $t7)
  )

  (i32.store offset=4
   (i32.const 0)

   (i32.add
    (local.get $7)

    (i32.const 16)
   )
  )

  (i32.add
   (local.get $6)

   (i32.add
    (local.get $5)

    (i32.add
     (local.get $4)

     (i32.add
      (local.get $3)

      (i32.add
       (local.get $2)

       (i32.add
        (local.get $0)

        (local.get $1)
       )
      )
     )
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

 (func $t1 
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

   (i32.add
    (local.get $0)

    (i32.const 16)
   )
  )

  (i32.store offset=16
   (local.get $0)

   (i32.const 1)
  )

  (i32.sub
   (i32.const 1)

   (i32.load offset=16
    (local.get $0)
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
  (; 2 ;)

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
     (local.get $0)

     (i32.const 16)
    )

    (i32.const 12)
   )
  )

  (i32.store offset=28
   (local.get $0)

   (i32.const 1)
  )

  (i32.store offset=8
   (local.get $0)

   (i32.add
    (local.get $0)

    (i32.const 16)
   )
  )

  (i32.store
   (i32.load offset=12
    (local.get $0)
   )

   (i32.const 32)
  )

  (i32.sub
   (i32.const 32)

   (i32.load offset=28
    (local.get $0)
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

 (func $t3 
  (; 3 ;)

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
   (local.get $0)

   (i32.add
    (local.get $0)

    (i32.const 16)
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

 (func $t4 
  (; 4 ;)

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
    (local.get $3)

    (i32.const 8)
   )

   (tee_local $1
    (i32.load offset=16
     (i32.const 0)
    )
   )
  )

  (i32.store offset=4
   (local.get $3)

   (tee_local $2
    (i32.load offset=12
     (i32.const 0)
    )
   )
  )

  (i32.sub
   (i32.add
    (i32.sub
     (i32.sub
      (i32.const 3)

      (local.get $2)
     )

     (local.get $1)
    )

    (i32.const 3)
   )

   (local.get $0)
  )
 )

 (func $t5 
  (; 5 ;)

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
   (local.get $0)

   (i32.const 1)
  )

  (i32.store offset=12
   (local.get $0)

   (i32.add
    (local.get $0)

    (i32.const 16)
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

  (i32.store offset=12
   (local.get $1)

   (i32.add
    (local.get $1)

    (i32.const 16)
   )
  )

  (i32.store offset=32
   (local.get $1)

   (i32.const 65)
  )

  (set_local $0
   (call $t6a
    (i32.const 65)

    (i32.add
     (local.get $1)

     (i32.const 16)
    )
   )
  )

  (i32.store offset=4
   (i32.const 0)

   (i32.add
    (local.get $1)

    (i32.const 48)
   )
  )

  (local.get $0)

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
  (; 7 ;)

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

   (local.get $0)
  )

  (i32.store offset=8
   (local.get $2)

   (local.get $1)
  )

  (i32.sub
   (i32.load offset=12
    (local.get $2)
   )

   (i32.load
    (i32.add
     (local.get $1)

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

 (func $t7 
  (; 8 ;)

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
