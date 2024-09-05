sumaUltimosDosDigitos :: Integer->Integer
sumaUltimosDosDigitos x = (abs x `mod` 10)+((abs x `div`10) `mod`10)

comparar :: Integer->Integer->Integer
comparar x y | sumaUltimosDosDigitos x < sumaUltimosDosDigitos y = 1
                | sumaUltimosDosDigitos x > sumaUltimosDosDigitos y = -1
                | otherwise = 0

absoluto :: Int->Int
absoluto x | x>=0 = x
            | otherwise = -x

maximoAbs:: Int->Int->Int
maximoAbs x y | absoluto x <= absoluto y =absoluto y
                | otherwise= absoluto x