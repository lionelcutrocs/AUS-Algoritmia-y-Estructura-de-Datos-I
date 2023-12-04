module DiccionarioTDA where

data ArbolBin a = VacioT | NodoT a ( ArbolBin a ) ( ArbolBin a ) deriving Show

{-
mkNewTree   :: ( Ord a ) => ArbolBin a
inTree      :: ( Ord a ) => a -> ArbolBin a -> Bool
addTree     :: ( Ord a ) => a -> ArbolBin a -> ArbolBin a
delTree     :: ( Ord a ) => a -> ArbolBin a -> ArbolBin a
-}

-- Creo una instancia de ArbolBin vacia

mkNewTree :: ( Ord a ) => ArbolBin a
mkNewTree = VacioT

-- Busqueda

inTree :: ( Ord a ) => a -> ArbolBin a -> Bool
inTree x VacioT = False                                         -- sera falso cuando x no este en el arbol
inTree x ( NodoT y izq der ) | x == y = True
                              | x < y = inTree x izq
                              | x > y = inTree x der

-- Insercion

addTree :: ( Ord a ) => a -> ArbolBin a -> ArbolBin a
addTree x VacioT = NodoT x VacioT VacioT                        -- si esta vacio, creo un nodo con valor x y sub arboles
addTree x (NodoT y izq der) | x == y = NodoT y izq der
                            | x < y = NodoT y ( addTree x izq ) der
                            | x > y = NodoT y  izq( addTree x der ) 