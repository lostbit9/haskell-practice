-- Find the number of elements of a list.
--

myLength :: (Integral b) => [a] -> b
myLength xs = sum [1 | _ <- xs]

myLength' :: (Integral b) => [a] -> b
myLength' [] = 0
myLength' (_:xs) = 1 + (myLength' xs)

myLength'' :: (Integral b) => [a] -> b
myLength'' = foldl (\acc x -> acc + 1) 0 

myLength''' :: (Integral b) => [a] -> b
myLength''' = sum . (map (\_ -> 1))
