----------- 2 -----------

-- Dar almenos dos ejemplos de funciones que tengan cada uno de los siguientes tipos:

-- A ------

-- (Int → Int) → Int

sumInt :: ( Int -> Int )
sumInt x = x + 1                    -- esta es la funcion que eligo tomar para devolver otro int

myInt :: ( Int -> Int ) -> Int
myInt f = f 4                       -- tomo sumInt y un entero x y devuelve un entero
--
restInt :: ( Int -> Int )
restInt x = x - 2

myOperation :: ( Int -> Int ) -> Int
myOperation f = f 5

-- B ------

-- Int → (Int → Int)

multInte :: Int -> ( Int -> Int )
multInte x y =  x * y

subInt :: Int -> ( Int -> Int )
subInt x y = x - y

-- C ------

-- (Int → Int) → (Int → Int)

auxSub :: Int -> Int
auxSub x = x - 1

subInte :: (Int -> Int) -> (Int -> Int)
subInte p x = p (p x)
--
auxSum :: Int -> Int
auxSum x = x + 2

sumInte :: (Int -> Int) -> (Int -> Int)
sumInte p x = p (p x) 

-- D ------

-- Int → Bool

isTrue :: Int -> Bool
isTrue x = if x == 5 then True else False

isNeg :: Int -> Bool
isNeg x = if x < 0 then True else False 

-- E ------

-- Bool → (Bool → Bool)

andLog :: Bool -> (Bool -> Bool)
andLog x y = x && y

orLog :: Bool -> (Bool -> Bool)
orLog x y = x || y 

-- F ------

-- en este ejemplo opero si es verdad o no lo que ingreso, segun AND u OR 

-- (Int,Char) → Bool

isAnd :: (Int, Char) -> Bool
isAnd (x, c) = x > 0 && c == 'A'

isOr :: (Int, Char) -> Bool
isOr (x, c) = x < 0 || c == 'a'

-- G ------

-- (Int,Int) → Int

isMayor :: (Int, Int) -> Int
isMayor (x, y) = if x > y then x else y

takeElem :: (Int, Int) -> Int
takeElem (x, y) = y

-- H ------

-- Int → (Int,Int)

addElem :: Int -> (Int, Int)
addElem x = (x, 4)

addInt :: Int -> (Int, Int)
addInt x = if x > 2 then (2, x) else (x, 2)