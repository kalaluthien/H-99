pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (left, right) = span (== x) xs in (x : left) : pack right
