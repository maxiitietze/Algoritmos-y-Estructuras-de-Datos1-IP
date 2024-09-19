pares :: [Integer]->[Integer]
pares [] = []
pares [x] | mod x 2 == 0 = [x]
          | otherwise = []
pares (x:xs) | mod x 2 == 0 = [x] ++ pares xs
             | otherwise = pares xs