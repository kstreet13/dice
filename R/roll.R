#' @name roll
#' @title Roll any number of dice
#'
#' @description
#' a function for rolling dice!
#'
#' @param times Number of times to roll
#' @param sides How many sides the dice should have
#' @param verbose Print information about the roll to the screen
#'
#' @examples
#' roll()
#' roll(times = 2, sides = 20)
#'
#' @export
roll <- function(times = 1, sides = 6, verbose = TRUE){
    suppressWarnings({ times <- as.integer(times) })
    if(is.na(times) || times < 1) stop('"times" argument must be a positive integer.')
    suppressWarnings({ sides <- as.integer(sides) })
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

