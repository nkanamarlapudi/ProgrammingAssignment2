## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function sets the matrix and returns inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
# This function reverse the matrix using solve
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
        message("getting cahced data")
        return(m)
  }
  data <- x$get(x)
  m <- solve(data, ...)
  m
}
