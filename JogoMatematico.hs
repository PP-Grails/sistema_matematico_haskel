module JogoMatematico where

jogo = do putStrLn "Quanto e 2 + 2?"
	  x <- readLn
          if x == 4
             then putStrLn "Voce acertou!"                    
             else putStrLn "Voce errou!"   

             
                          
			