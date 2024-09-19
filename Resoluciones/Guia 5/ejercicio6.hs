type Texto = [Char]
type Nombre = Texto
type Telefono = Texto
type Contacto = (Nombre, Telefono)
type ContactosTel = [Contacto]

elNombre:: Contacto->Nombre
elNombre (nombre,_) = nombre

elTelefono :: Contacto->Telefono
elTelefono (_,telefono) = telefono

enLosContactos:: Nombre->ContactosTel->Bool
enLosContactos  nombre [] = False
enLosContactos nombre (x:xs) | nombre == elNombre x = True    
                             | otherwise = enLosContactos nombre xs

agregarContacto :: Contacto->ContactosTel->ContactosTel
agregarContacto contacto [] = []
agregarContacto contacto (x:xs) | fst contacto == fst x = [(fst contacto, snd contacto)] ++ x:xs 
                                |otherwise = agregarContacto contacto xs

eliminarContacto :: Nombre->ContactosTel->ContactosTel
eliminarContacto nombre [] = []
eliminarContacto nombre (x:xs)  | nombre == elNombre x = xs
                                 | otherwise = [x] ++ eliminarContacto nombre xs  
                                                