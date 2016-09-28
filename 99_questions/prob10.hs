-- Runlength encoding
--

encode' :: (Num b) => String -> [(b,Char)]
encode' (x:xs) = foldl (\acc x -> if x == (snd (last acc)) then (init acc) ++ [((fst (last acc) + 1), snd (last acc))] else acc ++ [(1, x)]) [(1,x)] xs