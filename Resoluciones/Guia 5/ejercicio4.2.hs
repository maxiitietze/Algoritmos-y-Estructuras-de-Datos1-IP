empiezaConUnBlanco :: [Char] -> [Char] 
empiezaConUnBlanco x | head x == ' ' = tail x
                     | otherwise = x

sacarBlancosRepetidos :: [Char]->[Char]
sacarBlancosRepetidos []= []
sacarBlancosRepetidos [x] = [x]
sacarBlancosRepetidos (x:y:xs)| x == y && x == ' ' = sacarBlancosRepetidos (y:xs)
                                | otherwise = x : sacarBlancosRepetidos (y:xs)

palabraLimpia :: [Char]->[Char]
palabraLimpia l | head l == ' ' = empiezaConUnBlanco(sacarBlancosRepetidos(tail l))
                | otherwise = empiezaConUnBlanco(sacarBlancosRepetidos l)

contarPalabrasSinBlancos :: [Char]->Integer
contarPalabrasSinBlancos [] = 0
contarPalabrasSinBlancos [x] = 1
contarPalabrasSinBlancos (x:xs) | x == ' ' = 1 + contarPalabrasSinBlancos xs
                        | otherwise = contarPalabrasSinBlancos xs

contarPalabras :: [Char] -> Integer
contarPalabras l = contarPalabrasSinBlancos (empiezaConUnBlanco (sacarBlancosRepetidos l))

