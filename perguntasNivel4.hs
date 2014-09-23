module PerguntasNivel4 where

textosNivel4 :: Int -> String
textosNivel4 indice
	|indice == 0 = "Quanto e (raiz quadrada de 81) * 3 ?"
	|indice == 1 = "Quanto e a raiz quadrada de 0.09?"
	|indice == 2 = "Quanto e derivada de 6x?"
	|otherwise = "Sem pergunta!"

respostasNivel4 :: Int -> Float 
respostasNivel4 indice
	|indice == 0 = 27.0
	|indice == 1 = 0.3
	|indice == 2 = 6.0
	|otherwise   = 0.0

verificaResposta4 :: Int -> Float -> Bool
verificaResposta4 indice resposta
	|(respostasNivel4 indice) == resposta = True
	|otherwise = False
