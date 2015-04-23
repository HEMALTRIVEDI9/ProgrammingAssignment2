## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    minv <- NULL
    
    setMatrix <- function(n = matrix()){
        x <<- n
        minv <<- NULL
    }    
    getMatrix <- function() x
    
    setInv<- function(y = matrix()) minv<<- solve(y)    
    getInv <- function() minv
    
    list(set = setMatrix, get = getMatrix, getInv= getInv, setInv=setInv)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    minv<- x$getInv()
    if(is.null(minv)){
        y1 <- solve(x$get())
        x$setInv(y1)
        return(y1)
    }else{
        message("getting cached data")
        return(minv)
        
    }
}
