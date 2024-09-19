quitarTodos:: (Eq t)=>t->[t]->[t]
quitarTodos t []=[]
quitarTodos t (x:xs) | t == x = quitarTodos t xs
                    | otherwise = [x] ++ quitarTodos t xs
                    