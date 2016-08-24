-- Find the last but one element of a list.
--

find2ndLast :: [a] -> a
find2ndLast [] = error "Empty List"
find2ndLast [x] = error "Empty List"
find2ndLast [x,y] = x
find2ndLast (x:xs) = find2ndLast xs
