-- comp :: (b -> c) -> (a -> b) -> a -> c <=>
f :: Integer -> Integer
f = (*2) . (+3)

-- map (\x –> negate (abs x)) [5,–3,–6,7,–3,2,–19,24]
-- map (negate . abs) [5,–3,–6,7,–3,2,–19,24]

-- sum (replicate 5 (max 6.7 8.9))
-- sum . replicate 5 $ max 6.7 8.9