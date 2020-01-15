## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  e <- NULL
  set <- function(y) {
    x <<- y
    e <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) e <<- inverse
  getinverse <- function() e
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  e <- x$getinverse()
  if (!is.null(e)) {
    message("getting cached data")
    return(e)
  }
  data <- x$get()
  e <- solve(data, ...)
  x$setinverse(e)
  e
  }

