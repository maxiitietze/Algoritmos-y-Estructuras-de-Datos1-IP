sumarN:: Integer->[Integer]->[Integer]
sumarN t [] = []
sumarN t [x] = [t+x]
sumarN n (x:xs) = [n+x] ++ sumarN n xs
