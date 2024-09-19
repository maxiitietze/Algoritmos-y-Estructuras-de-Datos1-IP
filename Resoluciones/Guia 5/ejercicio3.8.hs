multiplosDeN :: Integer->[Integer]->[Integer]
multiplosDeN n [] = []
multiplosDeN n [x] | mod x n == 0 = [x]
                    | otherwise = []
multiplosDeN n (x:xs) | mod x n == 0 = [x] ++ multiplosDeN n xs
                      | otherwise = multiplosDeN n xs