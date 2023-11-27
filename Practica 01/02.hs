----------- 2 -----------

-- A ------

myInt :: ( Integer -> Integer ) -> Integer
myInt f = f 4

-- B ------

myInte :: Integer -> ( Integer -> Integer )
myInte f y =  f * y
