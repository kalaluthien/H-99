slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice (x:xs) 1 1 = [x]
slice (x:xs) 1 k = x : slice xs 1 (k - 1)
slice (x:xs) i k = slice xs (i - 1) (k - 1)
