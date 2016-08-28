-- Run-length encoding of a list. 
--

pack :: (Eq a) => [a] -> [[a]]
pack (x:xs) = foldl (\acc x -> if x == (last $ last acc) then init acc ++ [x:last acc] else acc ++ [[x]]) [[x]] xs

runLengthEncoding :: (Eq a, Num b) => [a] -> [(b, a)]
runLengthEncoding xs = zipWith (\x y -> (x,y)) (map (fromIntegral . length) (pack xs)) (map (\xs -> head xs) (pack xs))
