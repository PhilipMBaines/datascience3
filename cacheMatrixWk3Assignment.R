## Put comments here that give an overall description of what your 
2 ## functions do 
3 
 
4 ## Write a short comment describing this function 
5 #Function calculates inverse of a matrix using solve function
 
makeCacheMatrix <- function(x = matrix()) { 
		Unitmatrix <- solve(x) %*% x
		getinv <-solve(x, Unitmatrix)
		getinv
} 
 
 
10 
 
11 ## Write a short comment describing this function 
12 
 
cacheSolve <- function(x) { 
        ## Return a matrix that is the inverse of 'x' 
		inv <- makeCacheMatrix(x)
		if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
		data <- makeCacheMatrix(x)
       	data
} 
