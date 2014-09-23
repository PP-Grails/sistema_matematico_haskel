module Jogo where
import PerguntasNivel1
import PerguntasNivel2
import PerguntasNivel3
import PerguntasNivel4

jogoMatematico :: IO()
jogoMatematico = do
	putStrLn "Bem vindo(a) ao miniJogo de Matematica!"
	putStrLn "Em cada nivel voce tem 3 chances de acertar uma questao! Caso erre 3 questoes do mesmo nivel, o jogo termina!"
	putStrLn "Vamos camecar!? Responda a pergunta:"

	resultadoResposta1 False 0 60

resultadoResposta1 True i pontos = do
	putStrLn "Bem vindo ao nivel 2! As perguntas agora sao um pouco mais dificeis!"
	resultadoResposta2 False 0 (pontos+60)
resultadoResposta1 False 3 pontos = do
	putStrLn "GAME OVER"
	mostraPontuacao pontos
resultadoResposta1 False i pontos = do
	let indice = i
	let pergunta = textosNivel1 indice
	putStrLn pergunta
	resposta <- getLine
	let resultado = verificaResposta1 indice (read resposta::Float)
	if resultado == True 
		then 
			resultadoResposta1 True indice pontos
		else do
			mensagemRespostaErrada (2-indice)
			resultadoResposta1 False (indice+1) (pontos-20)

resultadoResposta2 True i pontos = do
	putStrLn "Bem vindo ao nivel 3! As perguntas agora sao um pouco mais dificeis!"
	resultadoResposta3 False 0 (pontos+60)
resultadoResposta2 False 3 pontos = do
	putStrLn "GAME OVER"
	mostraPontuacao pontos
resultadoResposta2 False i pontos = do
	let indice = i
	let pont = pontos
	let pergunta = textosNivel2 indice
	putStrLn pergunta
	resposta <- getLine
	let resultado = verificaResposta2 indice (read resposta::Float)
	if resultado == True 
		then 
			resultadoResposta2 True indice pont
		else do
			mensagemRespostaErrada (2-indice)
			resultadoResposta2 False (indice+1) (pont-20)

resultadoResposta3 True i pontos = do
	putStrLn "Bem vindo ao nivel 4! As perguntas agora sao um pouco mais dificeis!"
	resultadoResposta4 False 0 (pontos+60)
resultadoResposta3 False 3 pontos = do
	putStrLn "GAME OVER"
	mostraPontuacao pontos
resultadoResposta3 False i pontos = do
	let indice = i
	let pont = pontos
	let pergunta = textosNivel3 indice
	putStrLn pergunta
	resposta <- getLine
	let resultado = verificaResposta3 indice (read resposta::Float)
	if resultado == True 
		then
			resultadoResposta3 True indice pont
		else do
			mensagemRespostaErrada (2-indice)
			resultadoResposta3 False (indice+1) (pont-20)

resultadoResposta4 True i pontos = do
	putStrLn "Parabens! Voce terminou o jogo!"
	mostraPontuacao pontos
resultadoResposta4 False 3 pontos = do
	putStrLn "GAME OVER"
	mostraPontuacao pontos
resultadoResposta4 False i pontos = do
	let indice = i
	let pont = pontos
	let pergunta = textosNivel4 indice
	putStrLn pergunta
	resposta <- getLine
	let resultado = verificaResposta4 indice (read resposta::Float)
	if resultado == True 
		then 
			resultadoResposta4 True indice pont
		else do
			mensagemRespostaErrada (2-indice)
			resultadoResposta4 False (indice+1) (pont-20)

mostraPontuacao pontos = do
	putStr ("Pontuacao: ")
	print pontos

mensagemRespostaErrada :: Int -> IO()
mensagemRespostaErrada indice = do
	putStr "Resposta errada! Chances restantes: "
	print indice
	putStrLn ""
