split :: [a] -> Int -> ([a], [a])
split l n = go n [] l
    where go :: Int -> [a] -> [a] -> ([a], [a])
          go _ xs [] = (xs, [])
          go 0 xs ys = (xs, ys)
          go n xs (y:ys) = go (n - 1) (xs ++ [y]) ys
