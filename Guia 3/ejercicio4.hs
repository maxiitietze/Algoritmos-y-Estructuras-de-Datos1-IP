--a--
prodInt :: (Float,Float)->(Float,Float)->Float
prodInt x y =fst x *fst y + snd x +snd y

--b--
todoMenor :: (Float,Float)->(Float,Float)->Bool
todoMenor x y = fst x < fst y && snd x < snd y

--c--
distanciaPuntos ::(Float,Float)->(Float,Float)->Float
distanciaPuntos x y = sqrt((fst x - fst y)^2 + (snd x - snd y)^2)

--d--
first ::(a,b,c) -> a
first (a,_,_)=a
third :: (a, b, c) -> c
third (_, _, z) = z
second :: (a,b,c) -> b
second (_,b,_)=b

sumaTerna:: (Int,Int,Int)-> Int
sumaTerna x = first x + second x + third x

--f--
posPrimerPar:: (Int,Int,Int)-> Int
posPrimerPar x | first x `mod` 2== 0 = 1 
               | second x `mod` 2==0 = 2
                | third x `mod`2==0 = 3
                | otherwise = 4

--g--
crearPar :: a->b->(a,b)
crearPar x y =(x,y)

--h--
invertir ::(a,b)->(b,a)
invertir x  = (snd x,fst x) 