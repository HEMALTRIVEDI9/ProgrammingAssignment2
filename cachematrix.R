## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    invMatrix <- NULL ## This variable will hold inverse matrix.
    
    ## This function will set the original matrix to new matrix.
    setMatrix <- function(n = matrix()){ 
        x <<- n
        invMatrix <<- NULL
    }    
    
    ## This will function will return the original matrix.
    getMatrix <- function() x 
    
    ## This function will calculate inverse matrix and returns it.
    setInv<- function(y = matrix()) invMatrix<<- solve(y)   
    
    ## This function will returns inverse matrix.
    getInv <- function() invMatrix
    
    list(set = setMatrix, get = getMatrix, getInv= getInv, setInv=setInv)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    invMatrix<- x$getInv()
    
    if(is.null(invMatrix)){
    ## if inverse matrix is null then  calculate the inverse matrix and set it.
        invMatrix <- solve(x$get())
        x$setInv(invMatrix)
        return(invMatrix)
    }else{
    ## else return cached value.
        message("getting cached data")
        return(invMatrix)
        
    }
}
