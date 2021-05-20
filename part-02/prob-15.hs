repli :: [a] -> Int -> [a]
repli l n = l >>= (take n . repeat)
