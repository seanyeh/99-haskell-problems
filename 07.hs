-- Transform a list, possibly holding lists as elements into a `flat' list by
-- replacing each list with its elements (recursively). 

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten nl = case nl of
    Elem a -> [a]
    List a -> foldr (++) [] (map flatten a)

