#---------------------------------------
# my_kable -- my table style
#---------------------------------------
# The result is the pretty Dataset.
# if you call the function without the second argument, the table will be without a caption.
my_kable <- function(Dataset, TableCaption=NULL) {
kable(Dataset
      , col.names = NULL
      , booktabs = TRUE
      , caption = TableCaption) %>%
  kable_styling(latex_options = "HOLD_position")
}