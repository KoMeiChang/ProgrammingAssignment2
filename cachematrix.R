## Put comments here that give an overall description of what your
## functions do

## Below the first function is to create a list of functions 
## that can cache the inverse of a matrix
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

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


## The below function is to return a matrix 
## that is the inverse of 'x'
## 1. see if the inverse has already been calculated and 
##    gets the inverse from the  cache and skips the computation. 
## 2. Otherwise, it calculates the inverse of the data and 
##    sets the value of the inversion in the cache via 
##    the setInverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if ( ! is.null(m)) {
        print("getting cached data")
        return(m)
        }
        m <- solve(x$get())
        x$setInverse(m)
        m
}
