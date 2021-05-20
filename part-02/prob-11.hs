data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = foldr encode1 []
    where encode1 :: Eq a => a -> [ListItem a] -> [ListItem a]
          encode1 x [] = [Single x]
          encode1 x ((Single y):ys)
            | x == y = Multiple 2 x : ys
            | otherwise = Single x : ((Single y):ys)
          encode1 x ((Multiple n y):ys)
            | x == y = Multiple (n + 1) y : ys
            | otherwise = Single x : ((Multiple n y):ys)
