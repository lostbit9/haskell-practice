-- Find the last element of a list.
--

findLast :: [a] -> a
findLast [] = error "Empty list"
findLast [x] = x
findLast (_:xs) = findLast xs
