-- Find the last but one element of a list.
--

find2ndLast :: [a] -> a
find2ndLast [] = error "Empty List"
find2ndLast [x] = error "Empty List"
find2ndLast [x,y] = x
find2ndLast (x:xs) = find2ndLast xs


find2ndLast' :: [a] -> a
find2ndLast' [] = error "Empty list"
find2ndLast' [x] = error "Empty list"
find2ndLast' lst = (!!1) . reverse $ lst
