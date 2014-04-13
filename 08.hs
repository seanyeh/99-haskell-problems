-- If a list contains repeated elements they should be replaced with a single copy
-- of the element. The order of the elements should not be changed. 

compress :: (Eq a) => [a] -> [a]
compress (x:xs)
    | xs == []          = [x]
    | x == (head xs)    = compress xs
    | otherwise         = x:(compress xs)
