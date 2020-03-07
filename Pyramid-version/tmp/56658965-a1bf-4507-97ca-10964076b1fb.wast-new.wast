
(module
 (memory $0 1)

 (data 
  (i32.const 16)
 )

 (export "memory" 
  (memory $0)
 )

 (export "count" 
  (func $count)
 )

 (export "main" 
  (func $main)
 )

 (func $count 
  (; 0 ;)

  (param $0 i32)

  (param $1 i32)

  (result i32)

  (local $2 i32)

  (local $3 i32)

  (local $4 i32)

  (i32.add
   (i32.add
    (i32.add
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (i32.add
          (i32.add
           (i32.add
            (i32.add
             (i32.add
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.add
                     (i32.add
                      (i32.add
                       (i32.add
                        (i32.add
                         (i32.add
                          (i32.add
                           (i32.add
                            (i32.add
                             (i32.add
                              (i32.add
                               (i32.add
                                (i32.add
                                 (i32.add
                                  (i32.add
                                   (i32.add
                                    (i32.add
                                     (i32.add
                                      (i32.add
                                       (i32.add
                                        (i32.add
                                         (i32.add
                                          (i32.add
                                           (i32.add
                                            (i32.add
                                             (i32.add
                                              (i32.add
                                               (i32.add
                                                (i32.add
                                                 (i32.add
                                                  (i32.add
                                                   (i32.add
                                                    (i32.add
                                                     (i32.add
                                                      (i32.add
                                                       (i32.add
                                                        (i32.gt_s
                                                         (local.tee $4
                                                          (i32.load
                                                           (local.get $0)
                                                          )
                                                         )

                                                         (local.tee $2
                                                          (i32.load offset=4
                                                           (local.get $0)
                                                          )
                                                         )
                                                        )

                                                        (i32.gt_s
                                                         (local.get $2)

                                                         (local.tee $3
                                                          (i32.load offset=8
                                                           (local.get $0)
                                                          )
                                                         )
                                                        )
                                                       )

                                                       (i32.gt_s
                                                        (local.get $3)

                                                        (local.tee $2
                                                         (i32.load offset=12
                                                          (local.get $0)
                                                         )
                                                        )
                                                       )
                                                      )

                                                      (i32.gt_s
                                                       (local.get $2)

                                                       (local.tee $3
                                                        (i32.load offset=16
                                                         (local.get $0)
                                                        )
                                                       )
                                                      )
                                                     )

                                                     (i32.gt_s
                                                      (local.get $3)

                                                      (local.tee $2
                                                       (i32.load offset=20
                                                        (local.get $0)
                                                       )
                                                      )
                                                     )
                                                    )

                                                    (i32.gt_s
                                                     (local.get $2)

                                                     (local.tee $3
                                                      (i32.load offset=24
                                                       (local.get $0)
                                                      )
                                                     )
                                                    )
                                                   )

                                                   (i32.gt_s
                                                    (local.get $3)

                                                    (local.tee $2
                                                     (i32.load offset=28
                                                      (local.get $0)
                                                     )
                                                    )
                                                   )
                                                  )

                                                  (i32.gt_s
                                                   (local.get $2)

                                                   (local.tee $3
                                                    (i32.load offset=32
                                                     (local.get $0)
                                                    )
                                                   )
                                                  )
                                                 )

                                                 (i32.gt_s
                                                  (local.get $3)

                                                  (local.tee $2
                                                   (i32.load offset=36
                                                    (local.get $0)
                                                   )
                                                  )
                                                 )
                                                )

                                                (i32.gt_s
                                                 (local.get $2)

                                                 (i32.load offset=40
                                                  (local.get $0)
                                                 )
                                                )
                                               )

                                               (i32.gt_s
                                                (local.get $4)

                                                (local.tee $2
                                                 (i32.load offset=4
                                                  (local.get $0)
                                                 )
                                                )
                                               )
                                              )

                                              (i32.gt_s
                                               (local.get $2)

                                               (local.tee $3
                                                (i32.load offset=8
                                                 (local.get $0)
                                                )
                                               )
                                              )
                                             )

                                             (i32.gt_s
                                              (local.get $3)

                                              (local.tee $2
                                               (i32.load offset=12
                                                (local.get $0)
                                               )
                                              )
                                             )
                                            )

                                            (i32.gt_s
                                             (local.get $2)

                                             (local.tee $3
                                              (i32.load offset=16
                                               (local.get $0)
                                              )
                                             )
                                            )
                                           )

                                           (i32.gt_s
                                            (local.get $3)

                                            (local.tee $2
                                             (i32.load offset=20
                                              (local.get $0)
                                             )
                                            )
                                           )
                                          )

                                          (i32.gt_s
                                           (local.get $2)

                                           (local.tee $3
                                            (i32.load offset=24
                                             (local.get $0)
                                            )
                                           )
                                          )
                                         )

                                         (i32.gt_s
                                          (local.get $3)

                                          (local.tee $2
                                           (i32.load offset=28
                                            (local.get $0)
                                           )
                                          )
                                         )
                                        )

                                        (i32.gt_s
                                         (local.get $2)

                                         (local.tee $3
                                          (i32.load offset=32
                                           (local.get $0)
                                          )
                                         )
                                        )
                                       )

                                       (i32.gt_s
                                        (local.get $3)

                                        (i32.load offset=36
                                         (local.get $0)
                                        )
                                       )
                                      )

                                      (i32.gt_s
                                       (local.get $4)

                                       (local.tee $2
                                        (i32.load offset=4
                                         (local.get $0)
                                        )
                                       )
                                      )
                                     )

                                     (i32.gt_s
                                      (local.get $2)

                                      (local.tee $3
                                       (i32.load offset=8
                                        (local.get $0)
                                       )
                                      )
                                     )
                                    )

                                    (i32.gt_s
                                     (local.get $3)

                                     (local.tee $2
                                      (i32.load offset=12
                                       (local.get $0)
                                      )
                                     )
                                    )
                                   )

                                   (i32.gt_s
                                    (local.get $2)

                                    (local.tee $3
                                     (i32.load offset=16
                                      (local.get $0)
                                     )
                                    )
                                   )
                                  )

                                  (i32.gt_s
                                   (local.get $3)

                                   (local.tee $2
                                    (i32.load offset=20
                                     (local.get $0)
                                    )
                                   )
                                  )
                                 )

                                 (i32.gt_s
                                  (local.get $2)

                                  (local.tee $3
                                   (i32.load offset=24
                                    (local.get $0)
                                   )
                                  )
                                 )
                                )

                                (i32.gt_s
                                 (local.get $3)

                                 (local.tee $2
                                  (i32.load offset=28
                                   (local.get $0)
                                  )
                                 )
                                )
                               )

                               (i32.gt_s
                                (local.get $2)

                                (i32.load offset=32
                                 (local.get $0)
                                )
                               )
                              )

                              (i32.gt_s
                               (local.get $4)

                               (local.tee $2
                                (i32.load offset=4
                                 (local.get $0)
                                )
                               )
                              )
                             )

                             (i32.gt_s
                              (local.get $2)

                              (local.tee $3
                               (i32.load offset=8
                                (local.get $0)
                               )
                              )
                             )
                            )

                            (i32.gt_s
                             (local.get $3)

                             (local.tee $2
                              (i32.load offset=12
                               (local.get $0)
                              )
                             )
                            )
                           )

                           (i32.gt_s
                            (local.get $2)

                            (local.tee $3
                             (i32.load offset=16
                              (local.get $0)
                             )
                            )
                           )
                          )

                          (i32.gt_s
                           (local.get $3)

                           (local.tee $2
                            (i32.load offset=20
                             (local.get $0)
                            )
                           )
                          )
                         )

                         (i32.gt_s
                          (local.get $2)

                          (local.tee $3
                           (i32.load offset=24
                            (local.get $0)
                           )
                          )
                         )
                        )

                        (i32.gt_s
                         (local.get $3)

                         (i32.load offset=28
                          (local.get $0)
                         )
                        )
                       )

                       (i32.gt_s
                        (local.get $4)

                        (local.tee $2
                         (i32.load offset=4
                          (local.get $0)
                         )
                        )
                       )
                      )

                      (i32.gt_s
                       (local.get $2)

                       (local.tee $3
                        (i32.load offset=8
                         (local.get $0)
                        )
                       )
                      )
                     )

                     (i32.gt_s
                      (local.get $3)

                      (local.tee $2
                       (i32.load offset=12
                        (local.get $0)
                       )
                      )
                     )
                    )

                    (i32.gt_s
                     (local.get $2)

                     (local.tee $3
                      (i32.load offset=16
                       (local.get $0)
                      )
                     )
                    )
                   )

                   (i32.gt_s
                    (local.get $3)

                    (local.tee $2
                     (i32.load offset=20
                      (local.get $0)
                     )
                    )
                   )
                  )

                  (i32.gt_s
                   (local.get $2)

                   (i32.load offset=24
                    (local.get $0)
                   )
                  )
                 )

                 (i32.gt_s
                  (local.get $4)

                  (local.tee $2
                   (i32.load offset=4
                    (local.get $0)
                   )
                  )
                 )
                )

                (i32.gt_s
                 (local.get $2)

                 (local.tee $3
                  (i32.load offset=8
                   (local.get $0)
                  )
                 )
                )
               )

               (i32.gt_s
                (local.get $3)

                (local.tee $2
                 (i32.load offset=12
                  (local.get $0)
                 )
                )
               )
              )

              (i32.gt_s
               (local.get $2)

               (local.tee $3
                (i32.load offset=16
                 (local.get $0)
                )
               )
              )
             )

             (i32.gt_s
              (local.get $3)

              (i32.load offset=20
               (local.get $0)
              )
             )
            )

            (i32.gt_s
             (local.get $4)

             (local.tee $2
              (i32.load offset=4
               (local.get $0)
              )
             )
            )
           )

           (i32.gt_s
            (local.get $2)

            (local.tee $3
             (i32.load offset=8
              (local.get $0)
             )
            )
           )
          )

          (i32.gt_s
           (local.get $3)

           (local.tee $2
            (i32.load offset=12
             (local.get $0)
            )
           )
          )
         )

         (i32.gt_s
          (local.get $2)

          (i32.load offset=16
           (local.get $0)
          )
         )
        )

        (i32.gt_s
         (local.get $4)

         (local.tee $2
          (i32.load offset=4
           (local.get $0)
          )
         )
        )
       )

       (i32.gt_s
        (local.get $2)

        (local.tee $3
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
      )

      (i32.gt_s
       (local.get $3)

       (i32.load offset=12
        (local.get $0)
       )
      )
     )

     (local.tee $4
      (i32.gt_s
       (local.get $4)

       (local.tee $2
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
     )
    )

    (i32.gt_s
     (local.get $2)

     (i32.load offset=8
      (local.get $0)
     )
    )
   )

   (local.get $4)
  )
 )

 (func $main 
  (; 1 ;)

  (result i32)

  (local $0 i32)

  (i32.add
   (call $count
    (i32.const 16)

    (local.get $0)
   )

   (i32.const -12)
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
