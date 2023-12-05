ejemplo :: Int -> Int
ejemplo x = let

    variableLocal = 5
    resultado = x + variableLocal
    
    in resultado

{-

una funcion llamada ejemplo que toma un argumento x

x = let                 -- aca es el comienzo del bloque de let, y defino varibales locales

variableLocal = 5       -- creo la variable y asigno un valor
resultado               -- es otra variable local que tambien se crea

lo que hace resultado es el calculo de x + variableLocal

in                      -- marca el final del bloque de let
in resultado            -- resultado es la expresion , lo que devuelve la funcion 
--                      -- en este caso, devuelve x + 5

-}



ejemplo1 :: Int -> Int
ejemplo1 x = resultado
  where
    variableLocal = 10
    resultado = x + variableLocal

{-

con where, declaramos antes la expresion que las variables

x = resultado           -- resultado, es la expresion, donde se toma un x, y delvolvera resultado

where                   -- es el comienzo del bloque where, y defino las variables 
--                      -- la definicion de las variables son los mismos que en el ejemplo let









-}