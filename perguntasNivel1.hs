module PerguntasNivel1 where

textosNivel1 :: Int -> String
textosNivel1 indice
	|indice == 0 = "Quanto e 3 + 2?"
	|indice == 1 = "Quanto e 3.6 - 1.4?"
	|indice == 2 = "Quanto e 5.4 + 2.7?"
	|otherwise = "Sem pergunta!"

respostasNivel1 :: Int -> Float 
respostasNivel1 indice
	|indice == 0 = 5.0
	|indice == 1 = 2.2
	|indice == 2 = 8.1
	|otherwise   = 0.0

verificaResposta1 :: Int -> Float -> Bool
verificaResposta1 indice resposta
	|(respostasNivel1 indice) == resposta = True
	|otherwise = False
