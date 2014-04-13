-- Pack consecutive duplicates of list elements into sublists. If a list contains
-- repeated elements they should be placed in separate sublists. 

pack :: (Eq a) => [a] -> [[a]]
pack (x:xs) = foldl _pack [[x]] xs

_pack result x
    | x == (last (last result)) = (init result) ++ [(last result) ++ [x]]
    | otherwise = result ++ [[x]]
