import Data.Array
import Data.List

{-METODOS ITERATIVOS-}
--Jacobi: Funcion que recibe los parametros iniciales y llama al ciclo prinicpal
jacobi :: Matriz -> [(Integer,Double)] -> Matriz -> Integer -> Double -> Double -> Integer -> [(Integer,Double)]
jacobi a x0 b n lam tol iter = jacobi' a x0 b n lam (tol+1) tol iter

--Funcion que aplica el metodo
jacobi' :: Matriz -> [(Integer,Double)] -> Matriz -> Integer -> Double -> Double -> Double -> Integer -> [(Integer,Double)]
jacobi' a x0 b n lam  e tol i
        | (e > tol && i > 0) = jacobi' a x1 b n lam err tol (i-1)
        | (e <= tol) = x0
        | (otherwise) = error "El metodo no converge en las iteraciones dadas"
        where x1 = x1Jacobi a x0 b lam n n
              err = normMax x1 x0

--Funcion que halla los nuevos valores para el metodo de Jacobi
x1Jacobi :: Matriz -> [(Integer,Double)] -> Matriz -> Double -> Integer -> Integer -> [(Integer,Double)]
x1Jacobi a x0 b lam n i
         | (i == 1) = [(1,(lam) * (((b!(1,1)) - suma2) / (a!(1,1))) + (1-lam) * (snd (head x0)))]
         | (i > 1)  = [(i,(lam) * (((b!(i,1)) - suma1 - suma2) / (a!(i,i))) + (1-lam) * (snd (head ant)))] ++ (x1Jacobi a x0 b lam n (i-1))
         | (otherwise) = error "Fuera de rango, valor negativo"
         where suma1 = sum (map (\x -> mult x x0) (filter (\y -> col y <= (i-1)) (darFila a i)))
               suma2 = sum (map (\x -> mult x x0) (filter (\y -> col y >= (i+1)) (darFila a i)))
               col e = snd (fst e)
               ant = filter (\x -> fst x == i) x0