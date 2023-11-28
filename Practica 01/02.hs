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