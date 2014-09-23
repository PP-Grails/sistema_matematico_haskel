module PerguntasNivel3 where

textosNivel3 :: Int -> String
textosNivel3 indice
	|indice == 0 = "Quanto e 3 ^ 2?"
	|indice == 1 = "Quanto e 3 * 2 ^ 2?"
	|indice == 2 = "Quanto e a raiz quadrada de 49?"
	|otherwise = "Sem pergunta!"

respostasNivel3 :: Int -> Float 
respostasNivel3 indice
	|indice == 0 = 9.0
	|indice == 1 = 12.0
	|indice == 2 = 7.0
	|otherwise   = 0.0

verificaResposta3 :: Int -> Float -> Bool
verificaResposta3 indice resposta
	|(respostasNivel3 indice) == resposta = True
	|otherwise = False
