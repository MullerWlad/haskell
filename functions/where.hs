firstMethod :: Integer -> Integer -> String
firstMethod x y
    | x * y <= 30 = "Less than 30"
    | x * y <= 50 = "Less than 50"
    | otherwise = "Ok!"

secondMethod :: Integer -> Integer -> String
secondMethod x y
    | s <= 30 = "Less than 30"
    | s <= 50 = "Less than 50"
    | otherwise = "Ok!"
    where s = x * y

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

justHello :: String
justHello = message
    where message = "Hello"