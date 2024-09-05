type Anio = Integer
type EsBisiesto = Bool

bisiesto :: Anio->EsBisiesto
bisiesto x | (x `mod `4 /= 0) || (x `mod `100 == 0) && (x `mod `400 /= 0) = False
            | otherwise = True