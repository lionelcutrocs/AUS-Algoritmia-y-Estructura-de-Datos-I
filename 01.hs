----------- 1 -----------

-- A ------

myFive :: Num a => p -> a             -- toma un argunmento de tipo p (puede ser cualquier tipo) y devuelve tipo a
myFive _ = 5                          -- como esta restringuido por "Num" como argumento solo seran enteros

-- B ------

myApply :: Num a => a -> a -> a
myApply x y = x + y

v1 :: Integer -> Integer -> Integer
v1 = myApply 

-- C ------

--                                  -- id esta tomada por el propio haskell, por eso myId
myId :: p -> p                      -- toma un argumento tipo p y devuelve un valor p, sin modificaciones
myId x = x                          -- no esta restringido por lo tanto, no tiene restriccion de tipos de datos

-- D ------

myFirst :: (a, b) -> a              -- toma el par ordenado ( a, b ) y devuelve a 
myFirst ( x, y ) = x                -- solo usa el tipo Integer, numeros enteros. Input myFirst ( num1, num2 ) = num1

-- E ------

myDerive :: (Double -> Double) -> Double -> Double -> Double
myDerive f x h = (f (x + h) - f x) / h

-- F ------

--                                  -- signum/signo haskell ya lo tiene definido en su Prelude, por lo tanto solo hay que usarlo
calculoSignum :: Integer -> Integer -- toma el signo y el numero, y devuelve un Int para verificar su signo
calculoSignum = signum              -- defino el nombre de la funcion y lo igualo a signum
--                                  -- cuando se ingresa +num = 1, 0 = 0 y (-num) = -1

-- G ------

myAbs :: Integer -> Integer         -- para usar la alternativa sin signum/signo uso la forma guarda
myAbs x
    | x >= 0    = x                 -- si x es >= a 0, es positivo, 5 = 5, 0 = 0
    | otherwise = -x                -- otherwise = true, por lo tanto maneja otro caso que no se haya tenido en cuenta
    
myABs :: Num a => a -> a            -- abs con signum/signo, este devuelve un entero ( 1, -1, 0 ), por lo tanto
myABs x = x * signum x              -- si lo multiplicamos por el valor que queremos calcular, eliminamos el signo

-- H ------

myPot :: (Integral b, Num a) => (b, a) -> a  -- b que es p y a su vez la potencia tiene que ser entero, y que es x, puede ser entero o un num real
myPot ( p, x ) = x ^ p                       -- dado p y x, va a devolver x elvado a p

-- I ------

myXor :: Bool -> Bool -> Bool                -- xor es el exclusivo de OR el operador de disyuncion
myXor True  True = False                     -- 1 ^ 1 = F
myXor False False = False                    -- 0 ^ 0 = F
myXor _ _   = True                           -- 0 ^ 1 = V && 1 ^ 0 = V

-- J ------

myMax :: Ord a => a -> a -> a -> a
myMax x y z
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | otherwise = z

-- K ------
--                                           -- swap ya se encuentra definido dentro del haskell
myswap :: (b, a) -> (a, b)                   -- toma un b,a y devuelve un a,b. invierte las posiciones en la Tupla
myswap (x, y) = (y, x)

----------- 2 -----------

-- A ------

myInt :: ( Integer -> Integer ) -> Integer
myInt f = f 4

-- B ------

myInte :: Integer -> ( Integer -> Integer )
myInte f y =  f * y

