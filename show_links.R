#---------------------------------------
# Function show_links
#---------------------------------------
# input: 
# 1) matrix
# An example:
#             vector_name1 vector_name2
#metric1            0            0
#metric2            0            0
#metric3            0            0
#metric4            0            0
#metric5            0            0
# 2) columns_list_name
# It is the name of the vector that is supposed to be one of the matrix column names.
# The vector with the name "columns_list_name" contains matrix row names.
# An example:
# vector_name1 <- c(metric1, metric2, metric3)

# output: 
# matrix that has 1 on cross (element of vector columns_list_name, columns_list_name)
# An example:
#             vector_name1 vector_name2
#metric1            1            0
#metric2            1            0
#metric3            1            0
#metric4            0            0
#metric5            0            0

show_links <- function(matrix, columns_list) {
  if(columns_list %in% colnames(matrix)) {
    for(rowname in get(columns_list)) {
      if(rowname %in% rownames(matrix)) {
        matrix[rowname, columns_list] = 1
      }
    }
  }
  return(matrix)
}