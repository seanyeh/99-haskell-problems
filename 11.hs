-- Modified run-length encoding.
--
-- Modify the result of problem 10 in such a way that if an element has no
-- duplicates it is simply copied into the result list. Only elements with
-- duplicates are transferred as (N E) lists. 

data ListElement a = Single a | Multiple Int a deriving (Show)

encodeModified :: (Eq a) => [a] -> [ListElement a]
encodeModified xs = map _encodeModified (pack xs)
    where 
        _encodeModified a
            | (length a) == 1 = Single (head a)
            | otherwise = Multiple (length a) (head a)
