-- Remove the K'th element from a list. 

removeAt :: Int -> [a] -> (a, [a])
removeAt k xs = (xs!!(k - 1), (take (k - 1) xs) ++ (drop k xs))
