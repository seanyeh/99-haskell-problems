-- Find the last element of a list. 

myLast :: [a] -> a
myLast (x:[]) = x
myLast (x:xs) = myLast xs
