pack :: Eq a => [a] -> [[a]]
pack = foldr pack1 []
    where pack1 :: Eq a => a -> [[a]] -> [[a]]
          pack1 x [] = [[x]]
          pack1 x (y:ys)
            | x == head y = (x:y) : ys
            | otherwise   = [x] : (y:ys)
