-- Drop every N'th element from a list. 

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = foldl (_dropEvery n) [] (zip [1..] xs)

_dropEvery n x y
    | (mod (fst y) n) == 0  = x
    | otherwise             = x ++ [snd y]


-- Alternate way
dropEvery' :: [a] -> Int -> [a]
dropEvery' xs n = map snd (filter (\(x,_) -> (mod x n) /= 0) (zip [1..] xs))

