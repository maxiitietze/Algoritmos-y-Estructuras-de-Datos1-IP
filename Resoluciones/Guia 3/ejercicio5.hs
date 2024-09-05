first ::(a,b,c) -> a
first (a,_,_)=a
third :: (a, b, c) -> c
third (_, _, z) = z
second :: (a,b,c) -> b
second (_,b,_)=b

--todosMenores::(Int,Int,Int)->Bool
f:: Integer->Integer
f x | x<=7 = x*x
    | otherwise = (2*x)-1

g:: Integer->Integer
g x | x `mod` 2 == 0 = div x 2
    | otherwise = 3*x+1

todosMenores ::(Integer,Integer,Integer)->Bool
todosMenores x | f(first x)>g(first x) && f(second x)>g(second x) && f(third x)>g(third x) = True
                | otherwise = False