test_that("rolling works", {
    expect_true(roll() %in% 1:6)

    set.seed(1)
    expect_equal(roll(), 2)

    expect_true(all(roll(sides = 100, times = 1000) %in% 1:100))
    expect_true(all(sapply(1:1000, function(i){
        roll(sides = 100, verbose = FALSE) %in% 1:100
    })))
})
