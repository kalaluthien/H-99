encode :: Eq a => [a] -> [(Int, a)]
encode = foldr encode1 []
    where encode1 :: Eq a => a -> [(Int, a)] -> [(Int, a)]
          encode1 x [] = [(1, x)]
          encode1 x (y:ys)
            | x == snd y = (fst y + 1, x) : ys
            | otherwise  = (1, x) : (y:ys)
