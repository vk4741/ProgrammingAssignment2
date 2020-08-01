## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        
        j <- NULL
        
        ## Set matrix
        set <- function( matrix ){
                m <<- matrx
                j <<- NULL
         }
        ## Get the matrix
        
        get <- function(){
                m
         }
        
        ## set inverse
        setInverse <- function(inverse){
                j <<-inverse
         }
        
        ## get inverse
        getInverse <- function(){
                j
        }
        
        ## Return list of methods
        list(set = set, get= get,
             setInverse = setInverse,
             getInverse = getInverse)
        

}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by makeCacheMatrix above.
## cacheSolve retrives the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        if( !is.null(m) ){
                message("Getting cached data")
                return(m)
         }
        
        data <- x$get()
        ## Calculate inverse
        m <- solve(data) %*% data
        ##Set inverse
        x$setInverse(m)
        ##Return matrix
        m
}
