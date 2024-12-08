-- O intuito desse código é verificar de forma recursiva se um um elemento está
-- presente em uma lista de elementos do mesmo tipo


findElemento :: Eq a => a -> [a] -> Bool
-- :: mostra que serão definidos os tipos de entrada e saída
-- Eq a : uma condição em que a (argumento recebido) precisa ser um elemento comparável com '==' ou '\=
-- a -> : primeiro elemento que a função recebe
--[a]: segundo elemento que a função recebe (uma lista de elementos a)
-- Bool: o retorno que a função dará

findElemento _ [] = False
-- não importando o elemento procurado (representado por _), tendo a lista vazia o retorno será falso.

findElemento x (y:ys)
-- divide a função em 'x' que é o elemento procurado, 'y' que é o primeiro elemento da lista e 'ys' que é todo o restante da lista

    | x == y = True
    | otherwise = findElemento x ys
-- funciona como um 'if' comparando um depois o outro

main :: IO ()
main = do
print (findElemento 3 [2 , 5, 3, 8])
    