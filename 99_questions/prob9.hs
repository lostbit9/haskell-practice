--Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
--

pack :: (Eq a) => [a] -> [[a]]
pack (x:xs) = foldl (\acc x -> if x == (last $ last acc) then init acc ++ [x:last acc] else acc ++ [[x]]) [[x]] xs

pack' :: (Eq a) => [a] -> [[a]]
pack' [] = [[]]
pack' [x] = [[x]]
pack' (x:xs)
	| x == head xs = (x:(head $ pack' xs)) : (tail $ pack' xs)
	| otherwise = [x] : (pack' xs)
