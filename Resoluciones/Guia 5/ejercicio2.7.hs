compararConResto ::  Eq t=>t->[t]->Bool
compararConResto valor [] = False
compararConResto valor lista | valor == head lista  = True
compararConResto valor lista = compararConResto valor (tail lista)

eliminarRepetidos :: (Eq t)=>[t]->[t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) | compararConResto x xs = eliminarRepetidos xs
                         | otherwise = x : eliminarRepetidos xs

