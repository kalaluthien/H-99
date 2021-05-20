removeAt :: Int -> [a] -> (a, [a])
removeAt 1 (x:xs) = (x, xs)
removeAt n (x:xs) = let (y, ys) = removeAt (n - 1) xs in (y, x : ys)
