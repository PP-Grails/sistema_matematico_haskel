import Data.List
import qualified Data.List.Key as K

dist :: Floating a => (a, a) -> (a, a) -> a
dist (x1, y1) (x2, y2) = sqrt ((x1 - x2) ** 2 + (y1 - y2) ** 2)

tours :: [b] -> [[(Int, b)]]
tours = map (\(x:xs) -> x:xs ++ [x]) . permutations . zip [0..]

cost :: Floating a => [(b, (a, a))] -> a
cost xs = sum $ zipWith dist xs (tail xs)

shortestPath :: [(Double, Double)] -> [Int]
shortestPath = init . map fst . K.minimum cost . tours

main :: IO ()
main = print $ shortestPath [(5, 2), (19, 13), (4, 8), (6, 32),
                             (23, 7), (57, 54), (55, 8), (70, 59)]