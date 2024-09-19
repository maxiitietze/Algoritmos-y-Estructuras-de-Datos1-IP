longitud :: [a]->Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud xs
