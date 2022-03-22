summIt :: Num a => a -> a -> a
summIt x y = x + y

plusOne :: Num a => a -> a
plusOne x = x + 1

gettimgValue :: (Ord a, Num a) => a -> a
gettimgValue x = if x > 100
                    then x
                    else x + x
                    
equalTwo :: (Eq a, Num a) => a -> Bool
equalTwo x = x == 2