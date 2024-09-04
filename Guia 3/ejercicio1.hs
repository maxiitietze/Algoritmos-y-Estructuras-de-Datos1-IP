f :: Integer->Integer
f 1 = 8
f 4 = 131
f 16 = 16

g :: Integer -> Integer
g 8 = 16
g 16 = 16
g 131 = 1

--IMPLEMENTANDO FUNCION H=FoG => f[g(x)]
h :: Integer -> Integer
h x =f(g x)

--IMPLEMENTANDO FUNCION K=GoF => g[f(x)]
k :: Integer -> Integer
k x =g(f x) 