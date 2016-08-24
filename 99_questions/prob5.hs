-- Reverse a list.
--

revList :: [a] -> [a]
revList [] = []
revList (x:xs) = revList xs ++ [x]

revList' :: [a] -> [a]
revList' = foldl (\acc x -> x : acc) []

revList'' :: [a] -> [a]
revList'' = foldr (\x acc -> acc ++ [x]) []

revList''' :: [a] -> [a]
revList''' [] = []
revList''' [x] = [x]
revList''' xs = (last xs) : (revList''' (init xs))
