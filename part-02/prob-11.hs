data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified l = [transform x | x <- encode l]
    where transform :: Eq a => (Int, a) -> ListItem a
          transform (1, x) = Single x
          transform (n, x) = Multiple n x
          encode :: Eq a => [a] -> [(Int, a)]
          encode = foldr encode1 []
          encode1 :: Eq a => a -> [(Int, a)] -> [(Int, a)]
          encode1 x [] = [(1, x)]
          encode1 x (y:ys)
            | x == snd y = (fst y + 1, x) : ys
            | otherwise  = (1, x) : (y:ys)
