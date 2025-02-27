test_that("roll function works as expected", {
    expect_warning(roll(times='a'))
    expect_in(roll(), 1:6)
})
