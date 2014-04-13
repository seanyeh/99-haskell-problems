-- Run-length encoding of a list (direct solution).
--
-- Implement the so-called run-length encoding data compression method directly.
-- I.e. don't explicitly create the sublists containing the duplicates, as in
-- problem 9, but only count them. As in problem P11, simplify the result list by
-- replacing the singleton lists (1 X) by X. 

data ListElement a = Single a | Multiple Int a deriving (Show)

encodeDirect :: (Eq a) => [a] -> [ListElement a]
encodeDirect (x:xs) = map snd (foldl _encodeDirect [(x, Single x)] xs)

_encodeDirect result x
    | x == (fst tup) = case (snd tup) of
        (Single x)      -> (init result) ++ [(x, Multiple 2 x)]
        (Multiple n x)  -> (init result) ++ [(x, Multiple (n + 1) x)]
    | otherwise = result ++ [(x, Single x)]
    where
        tup = (last result)
