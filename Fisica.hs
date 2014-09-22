module Fisica where

produtoVetorial :: [Int] -> [Int] -> [Int]
produtoVetorial [] [] = []
produtoVetorial (x:xs) (y:ys) = x*y : produtoVetorial xs ys

type Ponto = (Float, Float)
distPontos :: Ponto -> Ponto -> Float
distPontos (x1, y1) (x2, y2) = sqrt ((x2 - x1) * (x2 - x1) * (y2-y1))

produtoEscalar :: [Int] -> [Int] -> Int
produtoEscalar [] [] = 0
produtoEscalar (x:xs) (y:ys) = x*y + produtoEscalar xs ys

produtoEscalar2 xs ys = sum [ x*y | (x,y) <- zip xs ys]