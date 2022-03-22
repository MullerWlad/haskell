-- have a 3 assotiative forms
-- infixr - right assot x u y u z = x u (y u z)
-- infixl - left assot x u y u z = (x u y) u z
-- infix - non assot (x u y) u z or x u (y u z)

-- number is priority

infixl 1 |-
(|-) :: String -> String -> String
(|-) xs ys = xs ++ ys


infixr 1 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Ord, Eq)