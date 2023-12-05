{- Una cola de prioridad es una estructura de datos que almacena elementos "clasificables"
Con la particularidad que, cuando se saca uno de ella siempre se extrae el elemento con menor clave,
pues se clasifican los elementos en funcion de prioridad, es decir la mas baja priridad. 

mkqpr   -> Crea una nueva instancia de cola de prioridad vacia
addqpr  -> Agrega un nuevo elemento a la cola
nextqpr -> Devuelve el elemento con la prioridad mas baja
popqpr  -> Devuelve una cola de prioridad donde se ha quitado nextqpr -}

{- Implementar esta cola de prioridad utilizando un arbol binario de busqueda como estructura de almacenamiento -}


newtype ColaPrio a = CP [a] deriving Show

-- Creacion de la nueva instancia de Cola Pri

mkqpr :: ColaPrio as
mkqpr = CP []

-- Agregamos elementos a la cola

addqpr :: a -> ColaPrio a -> ColaPrio a 
addqpr a ( CP p ) = CP ( p ++ [a] )

-- Devolvemos el elemento de prioridad mas baja

nextqpr :: ColaPrio a -> a
nextqpr ( CP [] ) = error "Cola Vacia"
nextqpr ( CP (x:xs) ) = x

-- Devolvemos la cola sin el elemento que movio nextqpr

popqpr :: ColaPrio a -> ColaPrio a 
popqpr ( CP [ ] ) = error "Cola Vacia"
popqpr ( CP (x:xs) ) = CP xs