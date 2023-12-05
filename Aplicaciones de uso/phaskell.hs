-- Tipos de datos en Haskell

import Data.Tuple (swap)                    -- esto es una importacion de la funcion swap, es para utilizarla
import Data.Time.Clock.TAI (taiEpoch)
--                                          -- se importa porque es una funcion que viene con haskell, asi como una "biblioteca en C"
--                                          -- estan clasificadas por modulos, seleccionas el modulo y la funcion a usar


miNumeroFavorito :: Integer
miNumeroFavorito = 3



miNumeroDecimalFavorito :: Double
miNumeroDecimalFavorito = 2.57



miInicial :: Char                           -- con comillas simples se puede tener un char
miInicial = 'L'                             -- osea un solo caracter



tuNombre :: String                          -- esto es un string propiamente dicho
tuNombre = "Malloc"                         -- lo que equivale a la lista de abajo



tuOtroNombre :: [Char]                      -- esto es una lista, se identifica por tener [ ]
tuOtroNombre = [ 'N', 'o', 'a', 'k' ]       -- este caso es una lista, es lo mismo que "malloc"
--                                          -- debido que tener una lista de chars, se forma una cadena de caracteres


listaDeNumero :: [Integer]                  -- esto es un lista de numeros enteros
listaDeNumero = [ 1, 2, 3 ]                 -- y solo es de tipo enteros, no acepta elementos diferentes (float, double)



tuplaDeCoordenadas :: (Integer, Integer)    -- con las tuplas podemos contener elementos de diferentes valores
tuplaDeCoordenadas = ( 3 , 2 )              -- puedo contener, un entero, un caracter y un string



tuPlas :: (String, Integer, Char)           -- esto es la mejor definicion para lo que sirve la tupla o hace
tuPlas = ( "hola", 99, 'L')


añadirElementoALista :: [a] -> a -> [a]     -- [a] toma una lista como argumento, y toma otro elemento del mismo tipo
añadirElementoALista  l e = e:l             -- para añardirla a una lista y devuelve una nueva lista con el nuevo elemento
--                                          -- y siempre se agregan al principio de la lista
listaOrginal :: [Integer]
listaOrginal = [ 2, 3, 4 ]
nuevoElemento :: Integer
nuevoElemento = 1

nuevaLista :: [Integer]
nuevaLista = añadirElementoALista listaOrginal nuevoElemento



sacarElementoDeUnaLista :: [a] -> a                 -- toma una lista como argumento, y toma el primer elemento del mismo elemento
sacarElementoDeUnaLista ( e:l ) = e                 -- para sacarlo, y devuelve el elemento para ser una nueva variable

nuevalista :: Integer
nuevalista = sacarElementoDeUnaLista listaOrginal   -- ejemplo de aplicacion, este caso saca el 2 de la listaOriginal


listaDelUnoAlCien :: [Integer]                      -- los puntos " .. " se puede decir que es el rando, es decir 
listaDelUnoAlCien = [ 1..100 ]                      -- [inicio..fin ], entonces arma una lista del 1 al 100


listaDeNumerosParesDelUnoAlCien :: [Integer]        -- asi como el caso anterior sigo creando listas, lo curioso
listaDeNumerosParesDelUnoAlCien = [ 0, 2..100 ]     -- que lo que definimos, se puede ver como la indicacion de un patron,
--                                                  -- que seria el patron de como va a funcionar esta lista, "pares"

listaDeNumerosImpares :: [Integer]
listaDeNumerosImpares = [ 1, 3..100 ]               -- siguiendo la definicion anterior, ahora mismo estos ejemplos tienen un limite
--                                                  -- que es 100, en el siguiente ejemplo, es la posibilidad de que sea infinito.

listaDeNumerosImparesInf :: [Integer]
listaDeNumerosImparesInf = [ 1, 3.. ]               -- sin darle un rango de "tope" se formara la lista infinita de numeros



-- Lista por intension o comprension (donde yo decido que elementos especificos tendre en la lista)


multiplesDeTres :: [Integer]
multiplesDeTres = [ n | n <- [ 1.. ], mod n 3 == 0 ]


-- Funciones, como usarlas " "

-- sobre las flechas y como se leen las funciones

-- Num a => a -> a -> a   ejemplo de la funcion suma

-- el ultimo " a " de la derecha, sera lo que devuelva la funcion 
-- desde ese punto, y todo lo de la izquierda, son el argumento de la funcion " a -> a -> "

suma :: Num a => a -> a -> a
suma x y = x + y                                   -- la x e y son el argumento de la funcion
--                                                 -- llamo a la funcion y le paso el numero, para hacer la suma


doble :: Num a => a -> a                           
doble x = 2 * x                                    

-- FUNCIONES SOBRE LISTAS Y ALGUNOS USOS

-- esta funcion es para añadir un elemento a la lista, esta se repite arriba

addElementToList :: a -> [a] -> [a]
addElementToList e l = e:l


-- esta funcion da la cantidad de elementos de una lista o tamaño, son equivalentes
-- length es una funcion propia de Haskell

sizeOfList :: Foldable t => t a -> Int
sizeOfList l = length l

-- sobre los valores booleanos como True o False, se escriben con la inicial en Mayuscula siempre

isEmptyList :: [a] -> Bool
isEmptyList [] = True                              -- esta funcion tiene un error si la dejamos asi
--                                                 -- 
isEmptyList l = False

-- esta funcion es para enlazar o unir 2 listas
-- solo se pueden enlazar 2 listas del mismo tipo de elementos
-- ejemplo. [1, 2, 3] [4, 5, 6] = [1, 2, 3, 4, 5, 6,]

-- ejemplo. [1, 2, 3] ["hola", "hello"] este tipo no esta permitido

joinTwoList :: [a] -> [a] -> [a]
joinTwoList l1 l2 = l1 ++ l2                       -- la lista l1 estara al inicio y la l2 siguiente


-- Listas anidadas o no aplanadas

-- son listas que contienen como elemento otras listas de tipo [ [1,2,3] ]
-- son estructuras donde los elementos individuales pueden ser listas completas por si mismas
-- en lugar de valores simples

listaNoAplanada :: [[Integer]]
listaNoAplanada = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]

-- esta lista contiene 3 elementos, ( [1, 2, 3], [4, 5, 6], [7, 8, 9] ) que son listas,
-- y estas estan contenidas en una lista [ los 3 elementos que son listas ]

listaAplanada :: [Integer]
listaAplanada = concat listaNoAplanada

-- la lista aplanada es lo contrario a tener como elementos otras listas
-- es decir es solo una lista, con elementos que ya no son listas del tipo [1, 2, 3]
-- esta funcion aplana una lista noaplanada, o desarma el anidado

tresPrimerasLetras = take 3 "abcdefg"


-- Datos avanzados y Enums

-- esto es un tipo especial de error. se puede usar en casosdonde necesite programar un error
-- ejemplo un calculo y programo un error, entonces al errar sale este error.

funcWithError :: a
funcWithError = undefined

-- Tipos ALIAS

-- es un forma de darle un nuevo nombre a un tipo existente
-- al definir un tipo alias, se crea un nuevo nombre para un tipo existente, no crea un nuevo tipo, si no
-- que simplemente proporciona un nombre alternativo para el mismo taiEpoch

type Dinero = Integer

type Comples = (Double, Double)

-- Tipos ENUMS

-- es una forma de crear nuevos tipos de datos, pueden contener carios constructores pueden o no llevar argumentos
-- se puede utilizar para representar conjuntos finitos de valores discretos

data DiaSemana = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo



