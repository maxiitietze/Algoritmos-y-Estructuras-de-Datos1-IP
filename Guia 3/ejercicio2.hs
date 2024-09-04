import Distribution.Simple.Setup (trueArg)
--a--
absoluto :: Int -> Int
absoluto = abs

--b--
maximoAbsoluto :: Int ->Int->Int
maximoAbsoluto x y| absoluto x >= absoluto y = absoluto x
                  | otherwise=absoluto y

--c--
maximo3 ::Int->Int->Int->Int
maximo3 x y z | x>=y && x>=z = x
             | y>=x && y>=z = y
             | otherwise = z    

--d--
algunoEs0 :: Float -> Float -> Bool
algunoEs0 x y = x==0 || y==0
--Resolviendo el mismo ejercicio con patern matching
--algunoEs0 0 y= True
--algunoEs0 x 0= True

--e--
ambosSon0 :: Float->Float->Bool
ambosSon0 x y = x==0 && y==0
--Resolviendo el mismo ejercicio con patern matching
--ambosSon0 0 0= True

--f--
mismoIntervalo ::   Float->Float->Bool
mismoIntervalo x y | (x<=3 && y<=3) || ((x>3 && x<=7) && (y>3 && y<=7)) || (x>7 && y>7) = True
                | otherwise =False
--h--
esMultiploDe :: Int->Int->Bool
esMultiploDe x y = x `mod` y == 0

--i--
digitoUnidades :: Int->Int
digitoUnidades x = x`mod`10

--j--
digitoDecenas :: Int->Int
digitoDecenas x = div(x`mod`100) 10
