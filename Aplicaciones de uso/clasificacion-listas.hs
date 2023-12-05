-- Quick Sort ( ordenamiento rapido )

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [x] = [x]
qsort ( x:t ) = qsort menores ++ [x] ++ qsort mayores
            where
                menores = [j | j<-t, j < x]              
                mayores = [j | j<-t, j >= x]

-- menores = [j | j<-t, j < x]

-- define la lista de menores, como una lista de comprension recorre la lista " t " y selecciona todos los elementos 
-- " j " que son menores que el pivot

-- mayores = [j | j<-t, j >= x]

-- define la lista mayores, recorre la lista " t " y seleccion todos los elementos " j " que son mayores que el pivot

particion :: Ord a => a -> [a] -> ([a], [a])
particion p [] = ([],[])
particion p ( x:xs ) = if x <= p then ( x:l1,l2 ) else ( l1, x:l2 )
                        where (l1,l2) = particion p xs

qsortt :: Ord a => [a] -> [a]
qsortt [] = []
qsortt [x] = [x]
qsortt ( x:xs ) = qsort y ++ [x] ++ qsort ys
                where (y,ys) = particion x xs

-- Seleccion Sort ( ordenamiento por seleccion )

delete :: Eq a => a -> [a] -> [a]
delete y [] = []
delete y l = [x | x<-l, x /= y]

-- [x | x<-l, x /= y]

-- [x | x <- l ]
-- como es a traves de lista de compresion, se crea una lista con elementos " x " de la lista " l " y luego se evalua y se resuelve
-- elimina el elemento " y " si x es igual a y, de lo contrario x /= y, se incluye en la nueva lista resultante

minimo :: Ord a => [a] -> a
minimo [x] = x  
minimo ( x:y:t ) = if x < y then minimo ( x:t ) else minimo ( y:t )

-- minimo [x] = x 
--
-- si la lista contiene solo un elemento [ x ], entonces ese es el minimo

-- minimo ( x:y:t ) = if x < y then minimo ( x:t ) else minimo ( y:t )
--
-- x < y --> si esto se cumple, se llama recursivamente la funcion minimo,
-- con la lista resultante de quitar " y " --> (x:t)

ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort [x] = [x]
ssort l = m:ssort l'
        where
            m = minimo l
            l'= delete m l

-- ssort l = m:ssort l'
--
-- " l " es la lista de entrada, " m " toma el elemento minimo de la lista, 
-- y la coloca al principio de la lista resultante

-- m = minimo l --> es la funcion auxiliar que se usa para encontrar el mismo, el resultado se asigna a " m "

-- Insertion Sort ( ordenamiento por insercion )


insert :: Ord t => t -> [t] -> [t]
insert x [] = [x]
insert x ( y:t ) = if x < y then ( x:y:t ) else y:insert x t

-- x ( y:t ) = if x < y then ( x:y:t ) else y:insert x t

-- la lista " t ", se descompone en y primer elemento y t el resto de la lista
-- si x < y, entonces el elemento x se coloca en posicion inicial, ya que es mejor que y
-- e y es menor que todos los elementos en t

isort :: Ord a => [a] -> [a]
isort [] = []
isort [x] = [x]
isort ( x:t ) = insert x ( isort t )