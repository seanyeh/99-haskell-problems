-- Generate the combinations of K distinct objects chosen from the N elements of a
-- list 

combinations n xs
    | n <= 0    = [[]]
    | otherwise = foldl (\res i -> 
        res ++ (_crossp (xs!!i) (combinations (n - 1) (drop (i + 1) xs)))) 
        [] [0..splitIndex]
    where
        splitIndex = (length xs) - n

_crossp x xs = map (\y -> x:y) xs
