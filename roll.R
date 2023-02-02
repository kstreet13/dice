
# it's a function for rolling dice!

roll <- function(times = 1, sides = 6, verbose = TRUE){
    times <- as.integer(times)
    if(is.na(times) || times < 1) stop('"times" argument must be a positive integer.')
    sides <- as.integer(sides)
    if(is.na(sides) || sides < 1) stop('"sides" argument must be a positive integer.')
    stopifnot(is.logical(verbose))
    r <- floor(runif(times, max = sides)+1)
    if(verbose){
        cat('Rolling ', times, 'd', sides, ':\n', sep = '')
        cat(' ', paste(r, collapse = '  '))
        if(times > 1){
            cat('\nSum:', sum(r), '\n')
        }
    }
    return(invisible(r))
}

