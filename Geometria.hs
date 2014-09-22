module Geometria (cilindro) where

cilindro :: (RealFloat a) => a -> a -> a  
cilindro r h = 
    let tamanhoArea = 2 * pi * r * h  
        topoArea = pi * r ^2  
    in  tamanhoArea + 2 * topoArea 