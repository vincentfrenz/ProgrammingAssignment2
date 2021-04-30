## Put comments here that give an overall description of what your
## functions do


m1 = matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
m2 = matrix(c(2,0,0,0,1,0,1,1,1), nrow = 3, ncol = 3)

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  cachematrix <<- solve(x)
}



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
  m <- cachematrix
  if(!is.null(cachematrix)) {
    message("getting cached data")
    return(cachematrix)
  }## Return a matrix that is the inverse of 'x'
  solve(x)
    
}

makeCacheMatrix(m1)
cacheSolve(y)
