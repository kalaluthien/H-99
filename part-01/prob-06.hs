isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome l = head l == last l
