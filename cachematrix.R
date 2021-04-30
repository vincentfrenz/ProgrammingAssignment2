## Put comments here that give an overall description of what your
## functions do


m1 = matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
m2 = matrix(c(2,0,0,0,1,0,1,1,1), nrow = 3, ncol = 3)

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #cachematrix <- function() m
  #list(cachematrix = cachematrix)
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(mean) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
 # m <- cachematrix()
 # if(!is.null(m)) {
 #   message("getting cached data")
 #   return(cachematrix)
 # }## Return a matrix that is the inverse of 'x'
 # solve(x)
    
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

makeCacheMatrix(m1)
cacheSolve(m2)
