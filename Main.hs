module Main where
import CalculadoraBasica(soma, subtracao, divisao, multiplicacao)
import CalculadoraCientifica()
import CalculadoraFinanceira()
import Geometria(cilindro)
import JogoMatematico(jogo)
import Fisica(produtoVetorial)

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
        putStrLn "3 - Sair";
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
              "3" -> putStrLn "Saindo..."
             }
