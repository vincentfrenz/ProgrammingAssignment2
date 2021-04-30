## Put comments here that give an overall description of what your
## functions do


x = matrix(c(2,0,0,0,1,0,0,0,1), nrow = 3, ncol = 3)

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  cachematrix <<- solve(x)
}



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
  if(!is.null(cachematrix)) {
    message("getting cached data")
    return(m)
  }## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix(x)
cacheSolve(x)
