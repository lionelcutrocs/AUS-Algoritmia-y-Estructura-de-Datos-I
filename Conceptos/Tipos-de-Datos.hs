-- SINONIMOS DE TIPOS --> TYPE

type Nombre = String
type Edad = Integer
type Dni = Integer
type Numero = Integer

--type Persona = (Nombre, Edad)

tocayos :: Eq a => (a, b1) -> (a, b2) -> Bool
tocayos ( nombre, _ ) ( nombre1,_ ) = nombre == nombre1

persona1 :: (String, Integer)
persona1 = ("Lio", 24)

persona2 :: (String, Integer)
persona2 = ("Elio", 55)

persona3 :: (String, Integer)
persona3 = ("Lio", 33)

-- DEFINICION TIPOS DE DATOS --> DATA

-- FUNCIONES QUE MANEJAN TIPOS DE DATOS PERSONALIZADOS

data Persona = Pers Nombre Dni Edad

lio :: Persona
lio = Pers "Lio Cutro" 41604425 24

esJoven :: Persona -> Bool
esJoven ( Pers _ _ edad ) = edad < 25

verPersona :: Persona -> [Char]
verPersona (Pers nombre docu edad) = "Persona, nombre: " ++ nombre ++ ", edad: " ++ show edad ++ ", DNI: " ++ show docu

-- NOMBRES DE CAMPOS (FIELD NAMES)

data Persona1 = Perss { nombre::String, dni::Integer, edad::Integer} deriving Show

data Direccion = Dir Nombre Numero

p1 :: Persona1
p1= Perss { nombre = "Leo", dni = 41604445, edad = 22}

-- TIPOS ENUMERADOS 

data Color = Rojo | Verde | Azul
data Temperatura = Frio | Caliente
data Estacion = Primavera | Verano | Otonio | Invierno

-- FUNCIONES SIMPLES MEDIANTE PATTERN MATCHING

tiempo :: Estacion -> Temperatura
tiempo Primavera = Caliente
tiempo Verano = Caliente
tiempo _ = Frio

instance Show Temperatura where
    show :: Temperatura -> String
    show Caliente = "Caliente"
    show Frio = "Frio"

-- TIPOS ALGEBRAICOS Y POLIMORFISMO

-- sobre el constructor, es una funcion que espera argumentos y devuelve un valor del tipo que esta definida

-- si queremos un tipo de dato que nos dé una reperesentacion de un par de coordenadas,
-- un nuevo tipo de dato llamado CoordType, y luego definimos un cons llamado Coord, con 2 argunmentos,
-- x e y y devuelve un valor de tipo CoordType.

data CoordType = Coord Float Float deriving Show


c1 :: CoordType
c1 = Coord 14.0 2.0

--Hacemos esta referencia al tipo dato CoordType, para poder referirnos a una coordenada

getX :: CoordType -> Float
getX ( Coord x _ ) = x

getY :: CoordType -> Float
getY ( Coord _ y ) = y

-- Escribimos funciones de proposito general que tomen argumentos de este tipo.

firstQuad :: [CoordType] -> Bool
firstQuad [] = True
firstQuad ( ( Coord x y ) : cs ) = ( x >= 0 ) && ( y >= 0 ) && firstQuad cs

-- Tomamos una lista de coordenadas y determina si todos los puntos son del primer cuadrante
-- donde las coordenadas son x e y positivos o 0 


data List a = Cons a ( List a ) | Nil deriving Show
