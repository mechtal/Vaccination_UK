#---------------------------------------
# my_kable -- my table style
#---------------------------------------
# The result is the pretty Dataset.
# if you call the function without the second argument, the table will be without a caption.
#---------------------------------------
# Libraries
#---------------------------------------
if(!require(knitr)){install.packages("knitr")}
library(knitr)
#---------------------------------------
if(!require(kableExtra)){install.packages("kableExtra")}
library(kableExtra)
#---------------------------------------
if(!require(dplyr)){install.packages("dplyr")}
library(dplyr)
#---------------------------------------
# Function
#---------------------------------------
my_kable <- function(Dataset, TableCaption=NULL) {
kable(Dataset
      , col.names = NULL
      , booktabs = TRUE
      , caption = TableCaption) %>%
  kable_styling(latex_options = "HOLD_position")
}