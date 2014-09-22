module Main where
import CalculadoraBasica
import CalculadoraCientifica
import CalculadoraFinanceira
import Geometria
import JogoMatematico
import Fisica
import System.IO

main = do
    putStrLn "Starting..."
    putStrLn "Done."	
    putStrLn "Sistema Matematico e Financeiro."
 
    putStrLn "Ola, qual o seu nome?"  
    name <- getLine  
    putStrLn ("Ola " ++ name ++ ", seja bem vindo!") 

menu :: IO()
menu = do { putStrLn "Menu principal\n";
        putStrLn "1 - Somar";
        putStrLn "2 - Exponenciacao";
        putStrLn "3 - Dicas de matematica";
	putStrLn "4 - Cadastre uma Dica de matematica";
        opcao <- getLine;
        case opcao of 
	      "1" -> do { putStrLn "Opcao Somar escolhida";	
		     	  putStrLn "Entre com dois numeros";
                          x <- readLn;
                          y <- readLn;
			  putStrLn ("A soma de x + y =");
                          print (x+y);
                         }
              "2" -> do { putStrLn "Digite um numero"; 
		          n <- readLn; 
                          print (n^2); 
                        }
              "3" -> do { putStrLn "Dicas de Matematica";
			  dicas <- readFile "dicas.txt";
                          putStr dicas; }
	      "4" -> do { putStrLn "Cadastro de Dicas de Matematica";
			  todoItem <- getLine;
			  appendFile "dicas.txt" ("\n" ++ todoItem ++ "\n"); 
			}		     
             }