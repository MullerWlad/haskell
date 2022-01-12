getLucky :: Int -> String 
getLucky 7 = "Good"
getLucky x = "Fuck"

getNumOnly :: (Num a) => a -> Bool
getNumOnly x = True

factorial :: Integer -> Integer 
factorial 0 = 1
factorial x = x * factorial(x - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x, y) (a, b) = (x + a, y + b)

-- But for trials
first :: (Num a) => (a, a, a) -> a
first (a, _, _) = a
second :: (Num a) => (a, a, a) -> a
second (_, a, _) = a
third :: (Num a) => (a, a, a) -> a
third (_, _, a) = a

addHead :: Integer -> [Integer]
addHead x = x:addHead(x + 1)

firstLetter :: String -> String
firstLetter "" = "Упс, пустая строка!"
firstLetter all@(x:xs) = "Первая буква строки " ++ all ++ " это " ++ [x]

closureZ :: Integer -> Integer -> [Integer]
closureZ x 0 = 0:closureZ x 1
closureZ x n = (n * x):((-n) * x):closureZ x (n + 1)
buildClosureZ :: Integer -> [Integer]
buildClosureZ x = closureZ x 0