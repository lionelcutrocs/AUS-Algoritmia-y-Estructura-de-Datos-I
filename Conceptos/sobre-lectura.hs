-- Estas son palabras reservadas que no pueden emplearse como identificadores
-- case -- of -- where -- let -- in -- if
-- then -- else -- data -- type -- infix -- infixl
-- infixr -- primitive -- class -- instance


-- Algunos ejemplos de construir identificadores

-- sum -- f -- f'' -- intSum -- elemento_dos -- do'until'zero



myCuadrado :: Integer -> Integer
myCuadrado x = x * x

myMenor :: ( Integer, Integer ) -> Integer
myMenor (x,y) = if x <= y then x else y         -- evalua cual es el menor x o y 
--                                              -- si se lo llama con myCuadrado, hallara ^2 del menor


infinito :: Integer
infinito = infinito + 1

tres :: Integer -> Integer
tres x = 3

-- Manejo de listas ------

-- length xs ||  ys, nos da la cantidad de elementos de las listas, en este caso 3
-- xs ++ ys nos concatena ambas listas [1,2,3,4,5,6]
-- concat  [[1], [2,3], [], [4,5,6]], nos dara un tipo [1,2,3,4,5,6] concatena

xs :: [Integer]
xs = [ 1, 2, 3 ]

ys :: [Integer]
ys = [ 4, 5, 6 ]

-- Las mismas funciones que se pueden usar para el manejo de listas tambien esta permitido para cadenas
-- length, concat, map fromEnum, ++


sumaPrimeros :: Num a => [a] -> a
sumaPrimeros [] = 0
sumaPrimeros (x:xs) = x + sumaPrimeros xs


myFactorial :: (Eq t, Num t) => t -> t
myFactorial 0 = 1
myFactorial n = n * myFactorial (n-1)


contar :: Num a1 => [a2] -> a1
contar [] = 0
contar (x:xs) = 1 + contar (xs)

invertirLista :: [a] -> [a]
invertirLista = reverse


---------------------------------------------

mInvertir :: [a] -> [a]
mInvertir [] = []
mInvertir [ x ] = [ x ]
mInvertir (x:xs) = mInvertir xs ++ [ x ]

mConcat :: [a] -> [a] -> [a]
mConcat [] l2 = l2
mConcat l1 [] = l1
mConcat (x:xs) l2 = x:mConcat xs l2

myMinimo :: Ord a => [a] -> a
myMinimo [ x ] = x
myMinimo ( x:y:t ) = if x <= y then myMinimo ( x:t ) else myMinimo ( y:t )

myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake _ [] = []                        -- este caso es, si se termina la lista antes
myTake a ( x:xs ) = x:myTake ( a-1 ) xs

myDrop :: (Eq t, Num t) => t -> [a] -> [a]
myDrop _ [] = []
myDrop 0 l = l
myDrop n ( x:t ) = myDrop ( n-1 ) t

