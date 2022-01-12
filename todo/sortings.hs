quickSort :: Ord a => [a] -> [a]
quickSort [] = []
-- quickSort (x:xs) = quickSort [y | y <- xs, y <= x] ++ [x] ++ quickSort[y | y <- xs, y > x]
quickSort (x:xs) = let less = quickSort [y | y <- xs, y <= x] 
                       more = quickSort [y | y <- xs, y > x]
                   in less ++ [x] ++ more