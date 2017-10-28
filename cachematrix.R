makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y) { 
#set and get the value of the matrix
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) n <<- inverse
  getinv <- function() n
  list(set = set, get = get,
       setinv = setinv, getinv = getinv)
}

CacheSolve <- function(x, ...) {the above matrix
# computes the inverse of 
  n <- x$getinv()
  if (!is.null(n)) {
    message("getting cached data for processing")
    return(n)
# will retrive inverse from the cache if this has been
    previously and there is no change to the matrix.
  }
  data <- x$get()
  n <- solve(data, ...)
  x$setinv(n)
  n
}









