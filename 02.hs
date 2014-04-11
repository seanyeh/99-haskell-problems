-- Find the last but one element of a list.

myButLast :: [a] -> a
myButLast (x:_:[])  = x
myButLast (x:xs)    = myButLast xs
