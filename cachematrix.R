## These functions enable the user to calculate the inverse of a square matrix 
##
## 
#Function calculates inverse of a matrix using solve function.
# The steps are (1) defining the matrix (x), 
#(2) defining the unit matrix - this has a value of 1 across the main diagonal and a value of 0 elsewhere
#(3) using solve to find the matrix, which when multiplied by x gives the unit matrix. This is the inverse 

makeCacheMatrix <- function(x = matrix()) { #Define x as a matrix
		Unitmatrix <- solve(x) %*% x # The command "solve(x) %*% x" produces a unit matrix with the same dimensions as x. 
		getinv <-solve(x, Unitmatrix)# The solve function gives the inverse. It must be a unique matrix
		getinv # The inverse has been defined and can be called in the cacheSolve function 
} 
 
 

 
## This function enables the user to compute the inverse of a matrix
# It is assumed that the matrix is square and invertible. Without this assumption I would start the function with a simple if statement to check that nrow(x) and ncol(X) are the same.
# The function checks to see if the inverse has already been calculated using the function makeCacheMatrix and calls if so.
# If this is not the case , the inverse of the matrix is calculated 
 
cacheSolve <- function(x) { 
        ## Return a matrix that is the inverse of 'x' 
		inv <- makeCacheMatrix(x)# Check to see if inverse matrix has been calculated
		if(!is.null(inv)) { #This checks if there is a value for inv (the inverse of x)
                message("getting cached data")
                return(inv) # The matrix is given, which was previously calculated using the makeCachematrix function
        }
		data <- makeCacheMatrix(x) #If the inverse matrix has not already been calculated, it is necessary to do so.  
       	data #The inverse matrix is returnedc
} 
