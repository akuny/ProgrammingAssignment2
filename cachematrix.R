<<<<<<< HEAD
## The two functions below allow a user to first define a matrix,
## and then calculate the inverse of that matrix, which will then
## be cached so that the inverse may be invoked without having to
## be recomputed.

## Function "makeCacheMatrix" first checks to see whether its
## argument is a matrix. If so, it saves the value of that argument
## and defines methods for retrieving its value, setting its inverse,
## and retrieving its inverse.

makeCacheMatrix <- function(x = matrix()) {
    if(!is.matrix(x)) stop("x must be a matrix")
    i <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Function "cacheSolve" first checks to see whether an inverse has
## been cached for the its argument. If an inverse has been cached,
## that cached value is returned. If an inverse has not been cached,
## the inverse is determined and then cached.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
        message("returing cached inverse")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
