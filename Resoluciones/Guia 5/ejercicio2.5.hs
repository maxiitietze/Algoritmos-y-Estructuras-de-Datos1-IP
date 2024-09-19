quitar ::(Eq t)=>t->[t]->[t]
quitar t [] = []
quitar t (x:xs) | t == x = xs
                    | otherwise =[x] ++ quitar t xs
