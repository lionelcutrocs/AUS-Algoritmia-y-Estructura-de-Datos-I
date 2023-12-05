-- Aplicaciones -> Ejemplos

inserta :: Ord t => t -> [t] -> [t]
inserta a [] = [a]
inserta a ( x:xs ) = if a < x then ( a:x:xs ) else ( x: inserta a xs)

split :: [a] -> ([a], [a])
split [] = ([],[])
split [x] = ([x],[])
split ( x:xs:t ) = ( x:m1, xs:m2 )
                    where (m1,m2) = split t

-- 1

sumaDivisores :: Integral a => a -> a
sumaDivisores d = sum [ x | x <- [1..d], d `mod` x == 0, x /= d]

perfectos :: Integral a => a -> [a]
perfectos p = [ x | x <- [1..p], sumaDivisores x == x]

-- 2

juntar :: Ord a => [a] -> [a] -> [a]
juntar a [] = a
juntar [] b = b
juntar ( x:xs ) ( y:ys ) = if x < y then( x: juntar xs (y:ys)) else ( y: juntar ys (x:xs))

-- 3

particion :: Ord a => a -> [a] -> ([a], [a])
particion p [] = ([],[])
particion p ( x:xs ) = if x <= p then ( x:l1,l2 ) else (l1,l2)
            where (l1,l2) = particion p xs 

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [a] = [a]
qsort (x:xs) = qsort y ++[x]++ ys
        where (y,ys) = particion x xs 

-- 4

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] = []
myZip [] _ = []
myZip ( x:xs ) ( y:ys ) = ( x,y ) : myZip xs ys

-- 5

prodEscalar :: [Int] -> [Int] -> Int
prodEscalar ( x:xs ) ( y:ys ) = sum [ x*y | ( x,y ) <- myZip xs ys ]

-- 6

indexado :: [a] -> [(a,Int)]
indexado lista = myZip lista [1..]