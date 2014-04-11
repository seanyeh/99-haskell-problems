-- Reverse a list. 

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

-- Alternate method
myReverse' :: [a] -> [a]
myReverse' = _myReverse' []
_myReverse' accum []        = accum
_myReverse' accum (x:xs)    = _myReverse' (x:accum) xs
