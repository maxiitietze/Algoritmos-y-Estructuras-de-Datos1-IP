ultimo :: [Int]->Int
ultimo [x] = x
ultimo (x:xs) = ultimo xs

sumarUltimo :: [Int]->[Int]
sumarUltimo [] = []
sumarUltimo [x] = [x+x]
sumarUltimo (x:xs) = [x+ultimo xs] ++ sumarUltimo xs