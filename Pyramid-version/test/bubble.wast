(module
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00\01\00\00\00\02\00\00\00\t\00\00\00+\00\00\006\00\00\00+\00\00\00\04\00\00\00\02\00\00\00\04\00\00\00\06\00\00\00")
 (export "memory" (memory $0))
 (export "count" (func $count))
 (export "main" (func $main))
 (func $count (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
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
                                                         (tee_local $4
                                                          (i32.load
                                                           (get_local $0)
                                                          )
                                                         )
                                                         (tee_local $2
                                                          (i32.load offset=4
                                                           (get_local $0)
                                                          )
                                                         )
                                                        )
                                                        (i32.gt_s
                                                         (get_local $2)
                                                         (tee_local $3
                                                          (i32.load offset=8
                                                           (get_local $0)
                                                          )
                                                         )
                                                        )
                                                       )
                                                       (i32.gt_s
                                                        (get_local $3)
                                                        (tee_local $2
                                                         (i32.load offset=12
                                                          (get_local $0)
                                                         )
                                                        )
                                                       )
                                                      )
                                                      (i32.gt_s
                                                       (get_local $2)
                                                       (tee_local $3
                                                        (i32.load offset=16
                                                         (get_local $0)
                                                        )
                                                       )
                                                      )
                                                     )
                                                     (i32.gt_s
                                                      (get_local $3)
                                                      (tee_local $2
                                                       (i32.load offset=20
                                                        (get_local $0)
                                                       )
                                                      )
                                                     )
                                                    )
                                                    (i32.gt_s
                                                     (get_local $2)
                                                     (tee_local $3
                                                      (i32.load offset=24
                                                       (get_local $0)
                                                      )
                                                     )
                                                    )
                                                   )
                                                   (i32.gt_s
                                                    (get_local $3)
                                                    (tee_local $2
                                                     (i32.load offset=28
                                                      (get_local $0)
                                                     )
                                                    )
                                                   )
                                                  )
                                                  (i32.gt_s
                                                   (get_local $2)
                                                   (tee_local $3
                                                    (i32.load offset=32
                                                     (get_local $0)
                                                    )
                                                   )
                                                  )
                                                 )
                                                 (i32.gt_s
                                                  (get_local $3)
                                                  (tee_local $2
                                                   (i32.load offset=36
                                                    (get_local $0)
                                                   )
                                                  )
                                                 )
                                                )
                                                (i32.gt_s
                                                 (get_local $2)
                                                 (i32.load offset=40
                                                  (get_local $0)
                                                 )
                                                )
                                               )
                                               (i32.gt_s
                                                (get_local $4)
                                                (tee_local $2
                                                 (i32.load offset=4
                                                  (get_local $0)
                                                 )
                                                )
                                               )
                                              )
                                              (i32.gt_s
                                               (get_local $2)
                                               (tee_local $3
                                                (i32.load offset=8
                                                 (get_local $0)
                                                )
                                               )
                                              )
                                             )
                                             (i32.gt_s
                                              (get_local $3)
                                              (tee_local $2
                                               (i32.load offset=12
                                                (get_local $0)
                                               )
                                              )
                                             )
                                            )
                                            (i32.gt_s
                                             (get_local $2)
                                             (tee_local $3
                                              (i32.load offset=16
                                               (get_local $0)
                                              )
                                             )
                                            )
                                           )
                                           (i32.gt_s
                                            (get_local $3)
                                            (tee_local $2
                                             (i32.load offset=20
                                              (get_local $0)
                                             )
                                            )
                                           )
                                          )
                                          (i32.gt_s
                                           (get_local $2)
                                           (tee_local $3
                                            (i32.load offset=24
                                             (get_local $0)
                                            )
                                           )
                                          )
                                         )
                                         (i32.gt_s
                                          (get_local $3)
                                          (tee_local $2
                                           (i32.load offset=28
                                            (get_local $0)
                                           )
                                          )
                                         )
                                        )
                                        (i32.gt_s
                                         (get_local $2)
                                         (tee_local $3
                                          (i32.load offset=32
                                           (get_local $0)
                                          )
                                         )
                                        )
                                       )
                                       (i32.gt_s
                                        (get_local $3)
                                        (i32.load offset=36
                                         (get_local $0)
                                        )
                                       )
                                      )
                                      (i32.gt_s
                                       (get_local $4)
                                       (tee_local $2
                                        (i32.load offset=4
                                         (get_local $0)
                                        )
                                       )
                                      )
                                     )
                                     (i32.gt_s
                                      (get_local $2)
                                      (tee_local $3
                                       (i32.load offset=8
                                        (get_local $0)
                                       )
                                      )
                                     )
                                    )
                                    (i32.gt_s
                                     (get_local $3)
                                     (tee_local $2
                                      (i32.load offset=12
                                       (get_local $0)
                                      )
                                     )
                                    )
                                   )
                                   (i32.gt_s
                                    (get_local $2)
                                    (tee_local $3
                                     (i32.load offset=16
                                      (get_local $0)
                                     )
                                    )
                                   )
                                  )
                                  (i32.gt_s
                                   (get_local $3)
                                   (tee_local $2
                                    (i32.load offset=20
                                     (get_local $0)
                                    )
                                   )
                                  )
                                 )
                                 (i32.gt_s
                                  (get_local $2)
                                  (tee_local $3
                                   (i32.load offset=24
                                    (get_local $0)
                                   )
                                  )
                                 )
                                )
                                (i32.gt_s
                                 (get_local $3)
                                 (tee_local $2
                                  (i32.load offset=28
                                   (get_local $0)
                                  )
                                 )
                                )
                               )
                               (i32.gt_s
                                (get_local $2)
                                (i32.load offset=32
                                 (get_local $0)
                                )
                               )
                              )
                              (i32.gt_s
                               (get_local $4)
                               (tee_local $2
                                (i32.load offset=4
                                 (get_local $0)
                                )
                               )
                              )
                             )
                             (i32.gt_s
                              (get_local $2)
                              (tee_local $3
                               (i32.load offset=8
                                (get_local $0)
                               )
                              )
                             )
                            )
                            (i32.gt_s
                             (get_local $3)
                             (tee_local $2
                              (i32.load offset=12
                               (get_local $0)
                              )
                             )
                            )
                           )
                           (i32.gt_s
                            (get_local $2)
                            (tee_local $3
                             (i32.load offset=16
                              (get_local $0)
                             )
                            )
                           )
                          )
                          (i32.gt_s
                           (get_local $3)
                           (tee_local $2
                            (i32.load offset=20
                             (get_local $0)
                            )
                           )
                          )
                         )
                         (i32.gt_s
                          (get_local $2)
                          (tee_local $3
                           (i32.load offset=24
                            (get_local $0)
                           )
                          )
                         )
                        )
                        (i32.gt_s
                         (get_local $3)
                         (i32.load offset=28
                          (get_local $0)
                         )
                        )
                       )
                       (i32.gt_s
                        (get_local $4)
                        (tee_local $2
                         (i32.load offset=4
                          (get_local $0)
                         )
                        )
                       )
                      )
                      (i32.gt_s
                       (get_local $2)
                       (tee_local $3
                        (i32.load offset=8
                         (get_local $0)
                        )
                       )
                      )
                     )
                     (i32.gt_s
                      (get_local $3)
                      (tee_local $2
                       (i32.load offset=12
                        (get_local $0)
                       )
                      )
                     )
                    )
                    (i32.gt_s
                     (get_local $2)
                     (tee_local $3
                      (i32.load offset=16
                       (get_local $0)
                      )
                     )
                    )
                   )
                   (i32.gt_s
                    (get_local $3)
                    (tee_local $2
                     (i32.load offset=20
                      (get_local $0)
                     )
                    )
                   )
                  )
                  (i32.gt_s
                   (get_local $2)
                   (i32.load offset=24
                    (get_local $0)
                   )
                  )
                 )
                 (i32.gt_s
                  (get_local $4)
                  (tee_local $2
                   (i32.load offset=4
                    (get_local $0)
                   )
                  )
                 )
                )
                (i32.gt_s
                 (get_local $2)
                 (tee_local $3
                  (i32.load offset=8
                   (get_local $0)
                  )
                 )
                )
               )
               (i32.gt_s
                (get_local $3)
                (tee_local $2
                 (i32.load offset=12
                  (get_local $0)
                 )
                )
               )
              )
              (i32.gt_s
               (get_local $2)
               (tee_local $3
                (i32.load offset=16
                 (get_local $0)
                )
               )
              )
             )
             (i32.gt_s
              (get_local $3)
              (i32.load offset=20
               (get_local $0)
              )
             )
            )
            (i32.gt_s
             (get_local $4)
             (tee_local $2
              (i32.load offset=4
               (get_local $0)
              )
             )
            )
           )
           (i32.gt_s
            (get_local $2)
            (tee_local $3
             (i32.load offset=8
              (get_local $0)
             )
            )
           )
          )
          (i32.gt_s
           (get_local $3)
           (tee_local $2
            (i32.load offset=12
             (get_local $0)
            )
           )
          )
         )
         (i32.gt_s
          (get_local $2)
          (i32.load offset=16
           (get_local $0)
          )
         )
        )
        (i32.gt_s
         (get_local $4)
         (tee_local $2
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
       (i32.gt_s
        (get_local $2)
        (tee_local $3
         (i32.load offset=8
          (get_local $0)
         )
        )
       )
      )
      (i32.gt_s
       (get_local $3)
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (tee_local $4
      (i32.gt_s
       (get_local $4)
       (tee_local $2
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (i32.gt_s
     (get_local $2)
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (get_local $4)
  )
 )
 (func $main (; 1 ;) (result i32)
  (local $0 i32)
  (i32.add
   (call $count
    (i32.const 16)
    (get_local $0)
   )
   (i32.const -12)
  )
 )
)
