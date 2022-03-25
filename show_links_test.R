#---------------------------------------
# tinytest -- for unit testing
#---------------------------------------
if(!require(tinytest)){install.packages("tinytest")}
library(tinytest)
#---------------------------------------
# Function show_links(matrix, columns_list_name) location
#---------------------------------------
source("/Users/travel_mechtal/Documents/UWE/Portfolio/Vaccination/Vaccination_UK/show_links.R")
#---------------------------------------
# Test 1 -- there are all elements (element of vector columns_list_name, columns_list_name)
#---------------------------------------
test_vector1 <- c("1","2","3")
test_matrix <- matrix(0, 5, 2) 
test_matrix_rownames <- c("1","2","3", "4", "5")
test_matrix_colnames <- c("test_vector1", "test_vector2")
rownames(test_matrix) <- test_matrix_rownames
colnames(test_matrix) <- test_matrix_colnames
# test
show_links(test_matrix, "test_vector1")
# expected result
result_matrix <- cbind(c(1,1,1,0,0), c(0,0,0,0,0))
rownames(result_matrix) <- test_matrix_rownames
colnames(result_matrix) <- test_matrix_colnames
# check
expect_equal(show_links(test_matrix, "test_vector1"), result_matrix)
#---------------------------------------
# Test 2 -- one element of vector columns_list_name isn't a matrix row name
#---------------------------------------
test_vector1 <- c("1","2","7")
test_matrix <- matrix(0, 5, 2) 
test_matrix_rownames <- c("1","2","3","4","5")
test_matrix_colnames <- c("test_vector1", "test_vector2")
rownames(test_matrix) <- test_matrix_rownames
colnames(test_matrix) <- test_matrix_colnames
# test
show_links(test_matrix, "test_vector1")
# expected result
result_matrix <- cbind(c(1,1,0,0,0), c(0,0,0,0,0))
rownames(result_matrix) <- test_matrix_rownames
colnames(result_matrix) <- test_matrix_colnames
# check
expect_equal(show_links(test_matrix, "test_vector1"), result_matrix)
#---------------------------------------
# Test 3 -- columns_list_name isn't a matrix column name
#---------------------------------------
test_vector1 <- c("1","2","7")
test_matrix <- matrix(0, 5, 2) 
test_matrix_rownames <- c("1","2","3","4","5")
test_matrix_colnames <- c("test_vector3", "test_vector2")
rownames(test_matrix) <- test_matrix_rownames
colnames(test_matrix) <- test_matrix_colnames
# test
show_links(test_matrix, "test_vector1")
# expected result
result_matrix <- cbind(c(0,0,0,0,0), c(0,0,0,0,0))
rownames(result_matrix) <- test_matrix_rownames
colnames(result_matrix) <- test_matrix_colnames
# check
expect_equal(show_links(test_matrix, "test_vector1"), result_matrix)
#---------------------------------------
# Test 4 -- all elements of vector columns_list_name aren't matrix row names
#---------------------------------------
test_vector1 <- c("6","7","8")
test_matrix <- matrix(0, 5, 2) 
test_matrix_rownames <- c("1","2","3","4","5")
test_matrix_colnames <- c("test_vector3", "test_vector2")
rownames(test_matrix) <- test_matrix_rownames
colnames(test_matrix) <- test_matrix_colnames
# test
show_links(test_matrix, "test_vector1")
# expected result
result_matrix <- cbind(c(0,0,0,0,0), c(0,0,0,0,0))
rownames(result_matrix) <- test_matrix_rownames
colnames(result_matrix) <- test_matrix_colnames
# check
expect_equal(show_links(test_matrix, "test_vector1"), result_matrix)
