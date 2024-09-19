productoria :: [Integer]->Integer
productoria [] = 0
productoria [x] = x
productoria (x:xs) = x * productoria xs