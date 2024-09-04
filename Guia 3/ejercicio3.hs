esMultiploDe :: Integer->Integer->Bool
esMultiploDe x y = x `mod` y == 0

estanRelacionados :: Integer->Integer->Bool
estanRelacionados x y | esMultiploDe x y  = True
                       | otherwise = False
