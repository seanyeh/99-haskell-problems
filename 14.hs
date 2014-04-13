-- Duplicate the elements of a list. 

dupli :: [a] -> [a]
dupli list = foldl (\x y -> x ++ [y, y]) [] list
