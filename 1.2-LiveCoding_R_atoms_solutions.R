
# First steps in R (This is a comment)

help()

?print

print("This is my first script in R")

# Any variable, function, parameter, etc. declared in R is called an **object**
x = 2+2;x

assign ("y",9)

# What is the difference of executing cells with alt+intro and ctrl+intro

x + y


# Let's keep programming: unlike other programming languages, in R one
# usually use assignation as directional assignment.
z <- 3.14
# or
3 -> z
z

# See all the objects that we have stored in memory:
ls()

print(z)

typeof(z)
class(z)
mode(z)
length(z)

as.integer(z)

z
typeof(z)
is.integer(z)
is.double(z)

# If we do not assign the output to a variable, 
# it only prints the output of the method.
# It is important to understand the difference between the R object 
# and the way these objects are displayed on the console.
z = as.integer(z); z

typeof(z)
is.integer(z)
is.double(z)
class(z)
mode(z)
length(z)

w = 1 + 2i
typeof(w)
class(w)
mode(w)
length(w)

w+z
w+z+i
w+z+1i

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

# We will see this in the future:
class(as.factor('A'))

z <-as.factor('A');z


# Task for you 1: complete the slide with characteristics of the built-in 
# objects in diapo 20

## Back to diapo 21 to 23

# Let us define some object and operate them with arithmetic operators:
a <- 10
b <- 3

a/b
a%/%3

# and we have at disposal the logical operators
a>b
b<b
a == b
a != b

# Logical operators on booleans:
# Negation:
!TRUE

# Logic AND
TRUE & TRUE
TRUE & FALSE

# Logic OR
TRUE | FALSE
FALSE | FALSE

isTRUE(T)
isTRUE(F)


