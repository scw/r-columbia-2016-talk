# R has special data types that make it unique as a language for 
# solving statistical problems and performing data science. A 
# few of the core data types for this role it contains:

# vector: Most data in R is represented as some form of vectors,
#         or ordered list of a consistent data type. 

# a simple vector of integers
a.vector <- c(4, 3, 8, 7, 1, 5)

# if we try to create a composite vector, R will automatically do
# type coershion to make the vector internally consistent.
b.vector <- c("a", TRUE, 11)
# [1] "a"    "TRUE" "11"

# matricies: Underlying the matrix is still a vector, but it contains
#            additional information about the shape of the data. This
#            is a fundamental type for many domains.
A = matrix(
    c(4, 3, 8, 7, 1, 5), # same data as above
    nrow=2, ncol=3, # what's the shape of the data?
    byrow=TRUE) # what order are the values in?

# data frames: Treats tabular (and multi-dimensional) data as a 
#              labeled, indexed series of observations. Sounds 
#              simple, but is a game changer over typical software
#              which is just doing 2D layout (e.g. Excel)

# Typicaly, we create a data frame by reading in an existing
# tabular data source, here a CSV file.
df.from.csv <- read.csv("data/growth.csv", header=TRUE)

# We can also create a data frame from scratch by combining
# the fundamental data type that most elements are composed of --
# vectors.
quarter <- c(2, 3, 1)
person <- c("Goodchild", "Tobler", "Krige")
met.quota <- c(TRUE, FALSE, TRUE)
df <- data.frame(person, met.quota, quarter)

#R> df
#     person met.quota quarter
#     1 Goodchild      TRUE       2
#     2    Tobler     FALSE       3
#     3     Krige      TRUE       1

# Note that many packages define their own objects, and conversion is
# an important step in any analysis dealing with higher order objects
# beyond simple data frames.
