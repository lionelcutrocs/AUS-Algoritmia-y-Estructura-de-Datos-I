----------- 2 -----------

-- Dar almenos dos ejemplos de funciones que tengan cada uno de los siguientes tipos:

-- A ------

-- (Int → Int) → Int

sumInt :: ( Int -> Int )
sumInt x = x + 1                    -- esta es la funcion que eligo tomar para devolver otro int

myInt :: ( Int -> Int ) -> Int
myInt f = f 4                       -- tomo sumInt y un entero x y devuelve un entero

restInt :: ( Int -> Int )
restInt x = x - 2

myOperation :: ( Int -> Int ) -> Int
myOperation f = f 5

-- B ------

myInte :: Integer -> ( Integer -> Integer )
myInte f y =  f * y
