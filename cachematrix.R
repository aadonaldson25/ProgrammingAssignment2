## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
}

makeCacheMaxtrix <- function(x = matrix()) { # This is the title of the function which will cache the matrix
  matrix <- NULL # The value of the variable m is currently undefined
  set <- function(y) { # This sets the value of the matrix
    matrix <<- y # inside this function only, y will be inverse
    inverse <<- NULL # inside this function only, NULL will be inverse
  }
  getinverse <- function() x # This will retrieve the inverse of 'function () x', where x is a maxtirx
  setinverse <- function(mean) m <<- mean # This will set/calculate the mean inverse of the function inside this function only 
  getmean <- function() m # This will get the mean inverse of the function 
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean) # This part of the function will list the cached inverse of of setmean/getmean
}

#This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}

cacheSolve <- function(solve(x), ...) { # This is the title of the function which will compute the inverse of the matrix returned by the above function
  m <- solve(x)$getmean() # The variable m contains the inversed mean from the makeCacheMaxtrix
  if(!is.null(m)) { # If m is not NULL, then a message will appear informing you that R is retreiving the cached data
    message("getting cached data")
    return(m) # The contents of variable m will be returned
  }
  data <- solve(x)$get() # This will retreive the inverse of x
  m <- mean(data, ...) # The matrix is the mean of the 'data' along with any number of unnamed arguments
  solve(x)$setmean(m) # This computes and returns the inverse of the matrix
  m
}

#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
