
# First steps in R (This is a comment)

help()

?print

print("This is my first script in R")

x = 2+2;x

assign ("y",9)

# What is the difference of executing cells with alt+intro and ctrl+intro

x + y


# Let's keep programming: usually use assignation as
z <- 3.14

print(z)

typeof(z)
class(z)
mode(z)
length(z)

as.integer(z)

z

# If we do not assign the output to a variable, 
# it only prints the output of the method.
# It is important to understand the difference between the R object 
# and the way these objects are displayed on the console.
z = as.integer(z); z

typeof(z)
class(z)
mode(z)
length(z)


# Repeat for a string:
msg = "This is my first script in R? No, my second one!"

print(msg)

typeof(msg)
class(msg)
mode(msg)

is.numeric(msg)
is.character(msg)
length(msg)

is.numeric(z)
is.integer(z)
is.double(z)


# Try some more variable types:

# Inf. represents infinity. It is useful for calculations like "1/0 -> Inf", 
# or used in cases like "1/Inf -> 0"
class(Inf)
typeof(Inf)
mode(Inf)

class(TRUE)
class(True) # Is valid for T

# F and False are equivalent
mode(F)

is.numeric(Inf)
is.double(NaN)

# NaN represents an undefined value;not a number. 
# It is useful for calculations like "0/0" or “Inf/Inf”.
is.na(v)
v = NaN; v
is.numeric(v)

length(v)



# Task for you 1: complete the slide with characteristics of the built-in objects

## Back to diapo 20 to 22


# Vector creation and logical operators:
x <- c(1:10); x
x[(x>8) | (x<5)]
## How it works:
x>8; x<5
x>8 | x<5
x[c(T,T,T,T,F,F,F,F,T,T)]

# Vector with months: create usind c() function
what_is_a_vector_in_mathematics <- c('Jan', 'Feb', 'Mar')

print(what_is_a_vector_in_mathematics)
length(what_is_a_vector_in_mathematics)
typeof(what_is_a_vector_in_mathematics)

## Creating a vector using : operator -- START:END --
x <- 2:-2;x
typeof(x)
class(x)
mode(x)

## Accessing 
print(x)
x
## Different ways to access all elements of a vector
x[]
## Indexing starts with 1
x[1]
### 2nd and 4th element
x[c(2, 4)]
### We can get even a larger vector than the original one:
x[c(2,2,2,4,5,5,5)]
### all but 3rd element
x[-3]
### Negative indices suppress the specified positions:
x[c(-1,-2,-4,-5)]
### Positive and negative indices can not be mixed!
x[c(1,-1)]
### real numbers are truncated to integers (ONLY WHEN ACCESSING!!!)
x[c(2.4, 3.8)]

## wHY THIS?!
## Because R uses logical vector for indexing
x[x<0]
## ---> In this case, c(FALSE, FALSE, FALSE, TRUE, TRUE)

## Change item value:
x
## If the types are different, coercion is forced!)
x[3] <- "zero"; x
typeof(x)
## Change type
x <- as.integer(x)
x

x[3] <- "zero"; x
## Check if item exists
'zero' %in% x
## Remove an item by its value. 
## Translation: without elements that are "zero"
x <- x[! x %in% 'zero'];x
typeof(x)
## Change type
x <- as.integer(x);x
typeof(x)
## Append (do not change type)
x <- append(x, 3, after = 0);x

## Initialize a null vector:
vector("numeric", length = 10) -> zz; zz
print(c(typeof(zz), class(zz)))

## Create a vector with the number of all Mondays of  November of this year 
## using seq() function
y <- seq(7, 30, by=7); y

## Create a vector of the same length as the previous vector, where all its 
## elements are "Monday"
z <- rep('Monday',length(y)); z

## Names for elements are common in R.
## Use character vector as index for vectors:
named_vector <- c("first"=3, "second"=0, "third"=9, "fourth"=21); named_vector
## The sample function takes a random sample:
sample(named_vector, 2) # The second parameter defines the size of the subsample.
## or permutation of a data object:
sample(named_vector)
## However, we can access the elements of the vector by their names:
named_vector[c("first", "third")]
## Show all labels:
names(named_vector)

## Delete an vector
named_vector <- NULL; named_vector


## If vectors are the most basic structure in R, we can think numbers, strings, etc.
## as vectors of length 1!!


## Task for you 2: What is the difference between NULL and NaN


# Diapos 23 and 24.


## The paste function joins the supplied vectors
## What would the following code return?
paste(paste(LETTERS[1:3], month.abb[1:3], sep = "-" ), month.name[1:4], sep=": ")
## Check this:
pi
pi <- 100
pi
rm(pi)
pi


# Diapo 25


# List:
## Create a list with the vector of Mondays and with the corresponding days
w <- list(z, y); w
## Accessing comonents of a list:
w[1]
w[[1]]
w[2]
w[[2]][4]

## Merging list w with the vector of months created at the beginning 
## (but converted to list before adding).
what_is_a_vector_in_mathematics
## If you use append, the elements of the vector are appended item by item 
## individually. This is why you must define a list first!
append(w,what_is_a_vector_in_mathematics)
append(w,list(what_is_a_vector_in_mathematics))
c(w, what_is_a_vector_in_mathematics)
merged_list <- c(w, list(what_is_a_vector_in_mathematics)); merged_list
length(merged_list)
length(merged_list[[2]])
length(merged_list[[3]])

## Naming list elements (key:values)
names(merged_list) <- c("Mondays_List", "number_mondays", "1st Quarter"); merged_list
## Access the list element using the name of the element.
merged_list$`1st Quarter`
class(merged_list)
typeof(merged_list[[1]])
## Is the same than
typeof(merged_list$Mondays_List)

## The str() function displays the structure of our object
attributes(merged_list)
str(merged_list)
## It works not only for lists but also for vectors.
str(what_is_a_vector_in_mathematics)
## Or components of a list:
str(merged_list$number_mondays)

## As it should be, one can update a component
merged_list[1] <- "updated element"
merged_list


# Diapos 25 and 26. R Markdown.

