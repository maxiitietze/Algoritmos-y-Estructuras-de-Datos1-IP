sumaAcumulada :: (Num t) => [t] -> [t]
sumaAcumulada [] = []
sumaAcumulada l = sumaAcumulada (quitarUltimo l) ++ [sumaAnteriores l]

sumaAnteriores :: Num p => [p] -> p
sumaAnteriores [] = 0
sumaAnteriores (x:xs) = x + sumaAnteriores xs

quitarUltimo :: (Num t) => [t] -> [t]
quitarUltimo (x:xs) | null xs = []
                    | otherwise = x : quitarUltimo xs


--[1,2,3,4,5,6] = 1,3,6,10,15,21