module Geometria (cilindro, volumeEsfera, areaEsfera, volumeCubo, areaCubo, cuboidVolume, cuboidArea, areaRetangulo) where

cilindro :: (RealFloat a) => a -> a -> a  
cilindro r h = 
    let tamanhoArea = 2 * pi * r * h  
        baseArea = pi * r ^2  
    in  tamanhoArea + 2 * baseArea 
    
volumeEsfera :: Float -> Float  
volumeEsfera raio = (4.0 / 3.0) * pi * (raio ^ 3)  
  
areaEsfera :: Float -> Float  
areaEsfera raio = 4 * pi * (raio ^ 2)  
  
volumeCubo :: Float -> Float  
volumeCubo side = cuboidVolume side side side  
  
areaCubo :: Float -> Float  
areaCubo side = cuboidArea side side side
  
cuboidVolume :: Float -> Float -> Float -> Float  
cuboidVolume a b c = areaRetangulo a b * c  
  
cuboidArea :: Float -> Float -> Float -> Float  
cuboidArea a b c = areaRetangulo a b * 2 + areaRetangulo a c * 2 + areaRetangulo c b * 2  
  
areaRetangulo :: Float -> Float -> Float  
areaRetangulo a b = a * b  