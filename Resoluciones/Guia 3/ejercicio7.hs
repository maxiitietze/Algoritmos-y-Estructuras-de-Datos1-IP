first ::(a,b,c) -> a
first (a,_,_)=a
third :: (a, b, c) -> c
third (_, _, z) = z
second :: (a,b,c) -> b
second (_,b,_)=b

distanciaManhattan :: (Float,Float,Float)->(Float,Float,Float)->Float
distanciaManhattan x y = abs(first x - first y )+ abs(second x - second y) + abs(third x - third y)
