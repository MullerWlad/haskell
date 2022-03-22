{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
x :: Integer
xs :: [Integer]
x:xs = [0]

m :: [Integer]
m = [x * y | x <- [1..20], y <- [1..20]]

k :: (Integer, Integer, Bool)
k = (8, 10, True)

zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys
