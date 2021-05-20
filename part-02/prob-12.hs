data ListItem a = Single a | Multiple Int a
    deriving (Show)

decodeModified :: Eq a => [ListItem a] -> [a]
decodeModified = (>>= go)
    where go (Single v) = [v]
          go (Multiple n v) = take n $ repeat v
