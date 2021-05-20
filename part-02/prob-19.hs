rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate l 0 = l
rotate l n
  | n > 0 = rotate (tail l ++ [head l]) (n - 1)
  | n < 0 = rotate (last l : init l) (n + 1)
  | otherwise = l
