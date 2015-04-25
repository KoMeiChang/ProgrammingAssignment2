## Put comments here that give an overall description of what your
## functions do

## Below the first function is to create a list of functions 
## that can cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
        x <<- y
        m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<-inverse
        getInverse <- function() m
        list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## The below function is to return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if ( ! is.null(m)) {
        print("getting cached data")
        return(m)
        }
        m <- solve(x$get())
        x$setInverse(m)
        m
}
