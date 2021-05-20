dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery l n = take (n - 1) l ++ dropEvery (drop n l) n
