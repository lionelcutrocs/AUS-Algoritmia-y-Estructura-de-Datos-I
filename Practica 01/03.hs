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

greater :: (Int, Int) -> Bool 
greater (x,y) = if x > y then True else False

-- esta funcion lo que hace es decir si el primer elemento de la tupla es mayor al otro
-- entonces se puede re definir como

ifGreater :: (Int, Int) -> Bool
ifGreater (x, y)
    | x > y = True
    | otherwise = False

-- C ------

-- f (x,y) = let z = x + y in g (z,y) where g (a,b) = a − b

b :: (Int, Int) -> Int
b (x, y) = let z = x + y in g (z, y) where g (a, b) = a - b

-- esta funcion toma una tupla, lo cual realiza en un simple modo la resta de x - y
-- en el momento que se aplica g (z, y) se esta sustituyengo a -> z y b -> y
-- por lo tanto where g (z, y) = z - y --> es igual que decir que; x - y ya que z = x

-- entonces la puedo redefinir como

c :: (Int, Int) -> Int
c (x, y) = x - y 