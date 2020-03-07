(block
    (loop
        (br_if 1 (i32.const 1))
        (br 0)
    )
)
(assert_return (invoke "main") (i32.const 0))