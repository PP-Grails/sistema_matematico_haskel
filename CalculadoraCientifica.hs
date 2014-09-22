module CalculadoraCientifica(fatorial, fibonacci) where

fatorial :: Int -> Int
fatorial n
       	| n == 0 = 1
	| n > 0 = fatorial (n - 1) * n	

fibonacci :: Int -> Int
fibonacci n
	| n == 0 = 0
	| n == 1 = 1
	| n > 1 = fibonacci (n-2) + fibonacci (n-1)
