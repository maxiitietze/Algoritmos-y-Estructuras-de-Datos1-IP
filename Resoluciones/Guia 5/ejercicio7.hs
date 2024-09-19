type Identificacion = Integer
type Texto = [Char]
type Ubicacion = Texto
type Estado = (Disponibilidad, Ubicacion)
type Locker = (Identificacion, Estado)
type MapaDeLockers = [Locker]
type Disponibilidad = Bool

numeroLocker :: Locker->Integer
numeroLocker (id,_)= id


existeLocker::Identificacion->MapaDeLockers->Bool
existeLocker numeroLocker [] = False
existeLocker numeroLocker (x:xs) | numeroLocker == fst x = True
                                 | otherwise = existeLocker numeroLocker xs
--existeLocker 123 [(123,(True,"patio")),(124,(True,"patio"))]

ubicacionLocker :: Identificacion->MapaDeLockers->Ubicacion
ubicacionLocker numeroLocker (x:xs) | numeroLocker == fst x = snd(snd x)
                                    | otherwise =ubicacionLocker numeroLocker xs

estaDisponibleElLocker:: Identificacion->MapaDeLockers->Bool
estaDisponibleElLocker numeroLocker (x:xs) | numeroLocker == fst x && fst (snd x) == True = True
                                            | numeroLocker == fst x && fst (snd x) == False = False
                                            | otherwise =  estaDisponibleElLocker numeroLocker xs

ocuparLocker:: Identificacion->MapaDeLockers->MapaDeLockers
ocuparLocker numeroLocker (x:xs) | numeroLocker == fst x && fst(snd x) == True = [(numeroLocker,(False,snd(snd x)))] ++ xs
                                 | otherwise =x: ocuparLocker numeroLocker xs
