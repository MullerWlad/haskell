map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs)
    | f x = x : filter' f xs
    | otherwise = filter' f xs

-- filter' (>3) [x | x <- [1..]]

summList :: Num a => [a] -> a
summList [] = 0
summList (x:xs) = x + summList xs

-- lambda
justFun :: Num a => [a] -> [a]
justFun = map (\t -> t * t)

declareThrow = \t -> t * t

-- declare flip'
flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

summList1 :: Num a => [a] -> a
summList1 = foldl1 (+)