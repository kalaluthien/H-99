dupli :: [a] -> [a]
dupli l = l >>= \x -> [x, x]
