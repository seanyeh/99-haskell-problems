-- Rotate a list N places to the left.
--
-- Hint: Use the predefined functions length and (++). 

rotate :: [a] -> Int -> [a]
rotate xs n = let len = (length xs) in
     take len (drop (mod n len) (xs ++ xs))
