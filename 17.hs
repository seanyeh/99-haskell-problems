-- Split a list into two parts; the length of the first part is given. 

split :: [a] -> Int -> ([a], [a])
split xs n
    | n < 0     = error "n < 0"
    | otherwise = _split [] xs n

_split accum (x:xs) n
    | (length accum) == n   = (accum, (x:xs))
    | otherwise             = _split (accum ++ [x]) xs n
