data ListItem a = Single a | Multiple Int a
    deriving (Show)

decodeModified :: Eq a => [ListItem a] -> [a]
