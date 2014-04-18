-- Create a list containing all integers within a given range. 

range :: Int -> Int -> [Int]
range a b
    | a > b     = []
    | a == b    = [b]
    | otherwise = a:(range (a + 1) b)
