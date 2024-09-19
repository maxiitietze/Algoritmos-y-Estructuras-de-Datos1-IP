compararConResto ::  Eq t=>t->[t]->Bool
compararConResto valor [] = False
compararConResto valor lista | valor == head lista  = True
compararConResto valor lista = compararConResto valor (tail lista)
-- LE PASO UN VALOR DE LA LISTA Y ME DICE SI SE ENCUENTRA O NO


-- 1 => [2,3,4,5]  2 => [3,4,5] 3 =>[4,5] 4 [5]
-- [1,2,3,4,4]

todosDistintos :: (Eq t )=>[t]->Bool
todosDistintos [] = True
todosDistintos (x:xs) | compararConResto x xs = False
                        | otherwise = todosDistintos xs 