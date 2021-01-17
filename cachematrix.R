## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Function that checks if the Inverse of the function is in the cache.

makeCacheMatrix <- function(x = matrix()) {
   t <- NULL
  set <- function(y) {
    x <<- y
    t <<- NULL
  }
  get <- function() x
  setInverse <- function(inv) t <<- inv
  getCacheInverse <- function() t
}


## Write a short comment describing this function

##Function that checks if tha inverse of the function is in cache, and if it is not, it calculates the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        t <- x$getCacheInverse()
       if (!is.null(t)) {
         message("Getting cache Data")
         return(t)
        }
        data <- x$get()
        t <- solve(data)
        x$setInverse(t)
        t
}
