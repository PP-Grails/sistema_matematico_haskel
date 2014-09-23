module PerguntasNivel2 where

textosNivel2 :: Int -> String
textosNivel2 indice
	|indice == 0 = "Quanto e 3 * 2?"
	|indice == 1 = "Quanto e 2.5 + 4 / 2?"
	|indice == 2 = "Quanto e 3 / 2?"
	|otherwise = "Sem pergunta!"

respostasNivel2 :: Int -> Float 
respostasNivel2 indice
	|indice == 0 = 6.0
	|indice == 1 = 4.5
	|indice == 2 = 1.5
	|otherwise   = 0.0

verificaResposta2 :: Int -> Float -> Bool
verificaResposta2 indice resposta
	|(respostasNivel2 indice) == resposta = True
	|otherwise = False
