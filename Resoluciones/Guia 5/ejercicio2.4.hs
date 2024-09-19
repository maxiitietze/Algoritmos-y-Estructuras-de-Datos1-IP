compararConResto ::  Eq t=>t->[t]->Bool
compararConResto valor [] = False
compararConResto valor lista | valor == head lista  = True
compararConResto valor lista = compararConResto valor (tail lista)

hayRepetidos::(Eq t ) => [t]->Bool
hayRepetidos [] = False
hayRepetidos (x:xs) | compararConResto x xs = True
                    | otherwise = hayRepetidos xs