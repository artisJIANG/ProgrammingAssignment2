## Put comments here that give an overall description of what your
## functions do
## Assignment: write a pair of functions that cache the inverse of a matrix.
##
## Hints for Programming Assignment 2
##		https://class.coursera.org/rprog-008/forum/thread?thread_id=174

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

## ?	m = matrix(c(2, 4, 3, 1), nrow=2, ncol=2)
	
	m <- NULL  ## free variable notes for matrix
	
	get <- function() { x }
	
	getinverse <- function() {
		solve(x)
	}
	
	set <- function(new_matrix) { x <<- new_matrix }
	
	## ---- interface -----
	list(
		get = get,
		set = set, 
		getinverse = getinverse
	)
}





## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  	## Return a matrix that is the inverse of 'x'
	im <- x$getinverse() 
	im
}




## --- Lazy Evaluation ---------------------------------------------------------
## expected output from this function
# source("cachematrix.R")
# amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))

## QUICK COMMANDS FOR EVALUATION: 
# source("cachematrix.R"); amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2)); cacheSolve(amatrix)
# source("cachematrix.R"); amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2)); amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2));cacheSolve(amatrix) 
# source("cachematrix.R"); amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2)); amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2));cacheSolve(amatrix); amatrix$get() 
# source("cachematrix.R"); amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2)); amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2));cacheSolve(amatrix); amatrix$get() ; amatrix$getinverse()


# amatrix$get() 
## expect Returns original matrix
#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4

#cacheSolve(amatrix)   
# Computes, caches, and returns    matrix inverse
# [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5


#amatrix$getinverse()  
# Returns matrix inverse
# [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5
