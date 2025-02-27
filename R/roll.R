# a function for rolling dice!
#' Roll some dice
#' @name roll
#'
#' @description
#' A function for rolling dice
#'
#' @param times integer
#' @param sides integer
#' @param verbose logical
#'
#' @details
#' roll is a generic function, roll2 rolls 2d6
#'
#' @returns
#' A vector of results
#' @export
#' @importFrom stats runif
#'
#' @examples
#' roll()
roll <- function(times = 1, sides = 6, verbose = TRUE){
    # check inputs
    stopifnot(is.integer(as.integer(times)))

    # do roll(s)
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

#' @rdname roll
#' @export
roll2 <- function(){
    roll(times = 2, sides = 6, verbose = TRUE)
}


.onAttach <- function(lib, pkg){
    packageStartupMessage("The {dice} package was produced as part of the USC IMAGE project")
}


