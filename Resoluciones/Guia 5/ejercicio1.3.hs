principio :: [t] -> [t]
principio [] = []
principio [x] = []
principio (x:xs) = x : principio xs