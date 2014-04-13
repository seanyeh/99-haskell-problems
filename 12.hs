-- Decode a run-length encoded list.
--
-- Given a run-length code list generated as specified in problem 11. Construct
-- its uncompressed version. 

data ListElement a = Single a | Multiple Int a deriving (Show)

decodeModified xs = foldl _decodeModified [] xs
    where
        _decodeModified x (Single a)        = x ++ [a]
        _decodeModified x (Multiple i a)    = x ++ (take i (repeat a))
