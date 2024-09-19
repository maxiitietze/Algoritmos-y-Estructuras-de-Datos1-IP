reverso :: [t]->[t]
reverso [] = []
reverso [x] = [x]
reverso (x:xs) = reverso xs ++ [x]

capicua :: (Eq t)=>[t]->Bool
capicua l = l == reverso l
