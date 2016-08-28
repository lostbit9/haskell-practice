--Eliminate consecutive duplicates of list elements.
--

compress :: (Eq a) => [a] -> [a]
compress xs = foldr (\x acc -> if (head acc) == x then acc else x:acc) [last xs] xs

compress' :: (Eq a) => [a] -> [a]
compress' [] = []
compress' [x] = [x]
compress' (x:xs) 
	| x == head xs = compress' xs
	| otherwise = x : compress' xs

compress'' :: (Eq a) => [a] -> [a]
compress'' [] = []
compress'' [x] = [x]
compress'' (x:xs@(y:_))
	| x == y = compress'' xs
	| otherwise = x:compress'' xs
