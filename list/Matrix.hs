module Matrix where

type Vector = [Double]
type Matrix = [Vector]

t :: Matrix -> Matrix
t m = foldr1 (zipWith (++)) (map ( map (:[]) ) m)

size :: Matrix -> (Int, Int)
size (x:m)
    | not $ null $ filter (\y -> y /= length x) [length v | v <- m] = (0, 0)
    | null x = (0, 0)
    | otherwise = (length (x:m), length x)

summ :: Matrix -> Matrix -> Matrix
summ [] [] = []
summ (v1:m1) (v2:m2)
    | size (v1:m1) == size (v2:m2) = zipWith (+) v1 v2 : summ m1 m2
    | otherwise = []

scaling :: Double -> Matrix -> Matrix
scaling s = map $ map (*s)

scaleMult :: Vector -> Vector -> Double
scaleMult v1 v2
    | size [v1] == size [v2] = foldl1 (+) $ zipWith (*) v1 v2
    | otherwise = 0

mult :: Matrix -> Matrix -> Matrix
mult [] m = []
mult (xv:xm) m = [scaleMult xv v | v <- ym] : mult xm m
    where ym = t m