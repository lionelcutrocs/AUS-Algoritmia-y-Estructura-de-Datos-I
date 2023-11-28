----------- 3 -----------

-- Reescribir cada una de las funciones sin utilizar
-- let, where e if 

-- A ------

-- f x = let (y,z) = (x,x) in y

f :: a -> a
f x = let (y, z) = (x, x) in y

-- esta funcion lo que hace es devolver el primer elemento de la lista (x,x)
-- entonces se puede re definir como

a :: a -> a
a x = x

-- B ------

-- greater (x,y) = if x > y then True else False

