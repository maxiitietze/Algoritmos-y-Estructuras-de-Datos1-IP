comparar :: Integer->Integer->Integer
comparar x y | x>=y = x
             | otherwise = y

maximo:: [Integer]->Integer
maximo [] = 0
maximo [x] = x
maximo (x:y:xs) | comparar x y == x = maximo (x:xs)
                | otherwise = maximo (y:xs)