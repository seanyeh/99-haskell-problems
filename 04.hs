-- Find the number of elements of a list. 

myLength :: [a] -> Integer
myLength []     = 0
myLength (x:xs) = 1 + (myLength xs)
