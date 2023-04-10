test_that("rolling works", {

    expect_true(roll() %in% 1:6)

    expect_true(roll(sides = 2) %in% 1:2)

    expect_true(all(roll(times = 100) %in% 1:6))

    set.seed(1)
    expect_equal(roll(), 2)

    set.seed(1)
    r <- roll(verbose = FALSE)
    expect_equal(r, 2)
})
