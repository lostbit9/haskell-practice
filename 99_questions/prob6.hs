--Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
--

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome (x:xs)
	| x == last xs = isPalindrome $ init xs
	| otherwise = False

isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' xs = isPaliHelper $ zip xs (reverse xs)
	where isPaliHelper xs = foldl (\acc (a,b) -> if a==b then acc else False) True xs
