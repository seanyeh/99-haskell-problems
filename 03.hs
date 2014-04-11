-- Find the K'th element of a list. The first element in the list is number 1. 

elementAt :: [a] -> Integer -> a
elementAt (x:xs) 1 = x
elementAt (x:xs) kth
    | kth > 1 = elementAt xs (kth - 1)
    | otherwise = error "Non-positive index"
elementAt _ _ = error "Not found"
