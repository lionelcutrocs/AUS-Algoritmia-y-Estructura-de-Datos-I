{- Un conjunto, es una coleccion de items del mismo tipo distinguibles entre si por su valor,
en la cual un item puede ser testeado si es miembro, insertado o borrado de una coleccion.
La cantidad de elementos distintos es lo que denomina el tamaño del conjunto-}


module Set (Set, emptySet, setEmpty, inSet, addSet, delSet) where
newtype Set a = Set [a] deriving (Show, Eq)


emptySet :: Set a
emptySet = Set []

setEmpty :: Set a -> Bool
setEmpty (Set []) = True
setEmpty (Set _) = False

inSet :: (Eq a) => a -> Set a -> Bool
inSet x (Set []) = False
inSet x (Set (y:ys)) = x == y || inSet x (Set ys)

addSet :: (Eq a) => a -> Set a -> Set a
addSet x (Set xs) = if inSet x (Set (xs)) then Set (xs) else Set (x:xs)

delSet :: (Eq a) => a -> Set a -> Set a
delSet x (Set []) = Set []
delSet x (Set (y:ys)) = if x /= y then addSet y (delSet x (Set ys)) else delSet x (Set ys)

unionSet :: (Eq a) => Set a -> Set a -> Set a
unionSet (Set []) (Set (x)) = Set x
unionSet (Set (x:xs)) (Set (y)) = if inSet x (Set y) then unionSet (Set xs) (Set y) else unionSet (Set xs) (Set (x:y))
