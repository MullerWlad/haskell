firstMethod :: Num a => [a] -> String
secondMethod :: Num a => [a] -> String
thirdMethod :: Num a => [a] -> String
fourthMethod :: Num a => [a] -> String

firstMethod [] = "Empty list"
firstMethod [x] = "Only one element"
firstMethod xs = "Another list"

secondMethod xs
    | null xs = "Empty list"
    | otherwise = "Another list"

thirdMethod xs = "List is " ++
    case xs of 
        [] -> "empty"
        [_] -> "onebinded"
        xs -> "long"

fourthMethod xs = "List is " ++ what xs
    where
        what [] = "empty"
        what [_] = "onebinded"
        what xs = "long"