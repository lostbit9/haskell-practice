--Find the K'th element of a list. The first element in the list is number 1.
--

findKth :: (Integral b) => [a] -> b -> a
findKth [] _ = error "Index out of range"
findKth (x:xs) 1 = x
findKth (x:xs) i = findKth xs (i-1)
