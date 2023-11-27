----------- 2 -----------

-- Dar almenos dos ejemplos de funciones que tengan cada uno de los siguientes tipos:

-- A ------

-- (Int → Int) → Int

sumInt :: ( Int -> Int )
sumInt x = x + 1                    -- esta es la funcion que eligo tomar para devolver otro int

myInt :: ( Int -> Int ) -> Int
myInt f = f 4                       -- tomo sumInt y un entero x y devuelve un entero

-- B ------

myInte :: Integer -> ( Integer -> Integer )
myInte f y =  f * y
