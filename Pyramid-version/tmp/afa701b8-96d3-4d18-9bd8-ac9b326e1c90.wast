(block
    (loop
        (br_if 1 (f32.ne (f32.min (f32.const nan) (f32.const 0.0)) (f32.const 0.0)))
        (br 0)
    )
)