data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeDirect :: Eq a => [a] -> [ListItem a]
