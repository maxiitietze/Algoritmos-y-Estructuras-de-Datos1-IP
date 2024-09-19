sumar_cada_posicion :: Integer->[Integer]->[Integer]
sumar_cada_posicion v [] = []
sumar_cada_posicion v [x] = [v+x]
sumar_cada_posicion v (x:xs) = [v+x] ++ sumar_cada_posicion v xs 



sumarElPrimero::[Integer]->[Integer]
sumarElPrimero [] = []
sumarElPrimero [x] = [x+x]
sumarElPrimero (x:xs) = [x+x] ++ sumar_cada_posicion x xs
