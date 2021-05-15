elementAt :: [a] -> Int -> a
elementAt [] _ = error "index out of bound"
elementAt (x:_) 1 = x
elementAt (_:xs) n = elementAt xs (n - 1)
