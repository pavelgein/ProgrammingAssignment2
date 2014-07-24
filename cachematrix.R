## Put comments here that give an overall description of what your
## functions do

## There is an implementation of CacheMatrix object, which can kepp the inverce matrix with the original matrix

## Write a short comment describing this function
## This function create a CacheMatrix object
## It have set and get functions for setting and getting matrix
## It have setinv and getinv functions for setting and getting inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## This function takes a CacheMatrix and returns inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv = x$getinv()
    if (!is.null(inv)) {
        print("Cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinv(inv)
    inv
}
