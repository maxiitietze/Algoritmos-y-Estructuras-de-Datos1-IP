palabraMasLarga ::[Char]->[Char]
palabraMasLarga []= []
palabraMasLarga [x]| [x] /= [' '] = [x]
                    | otherwise = []
palabraMasLarga (x:xs) |  x == ' ' = palabraMasLarga xs
                  | otherwise = x: palabraMasLarga xs