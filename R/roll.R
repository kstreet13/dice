

#' @title a function for rolling dice!
#' @name roll
#'
#' @param times integer, number of times to roll
#' @param sides integer, number of sides
#' @param verbose logical, whether to show what was rolled
#'
#' @return a random number
#' @export
#'
#' @importFrom stats runif
#'
#' @examples
#' roll()
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



