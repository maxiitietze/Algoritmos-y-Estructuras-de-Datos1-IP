pertenece ::Eq t => t->[t]->Bool
pertenece t []= False
pertenece t (x:xs) | t == x = True
                    | otherwise = pertenece t xs
