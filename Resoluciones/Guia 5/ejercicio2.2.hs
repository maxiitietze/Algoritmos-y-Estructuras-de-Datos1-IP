todosIguales :: (Eq t )=>[t]->Bool
todosIguales [] = True
todosIguales [x] = True
todosIguales (x:xs) | x == head xs = todosIguales xs 
                    | otherwise = False
            