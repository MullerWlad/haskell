--class Eq a where
    --(==) :: a -> a -> Bool 
    --(/=) :: a -> a -> Bool
    --x == y = not (x /= y)
    --x /= y = not (x == y)

data TrafficLight = Red | Yellow | Green | Timeout

instance Eq TrafficLight where
    Red == Red = True 
    Yellow == Yellow = True 
    Green == Green = True 
    _ == _ = False

instance Show TrafficLight where
    show Red = "Red light"
    show Green = "Green light"
    show Yellow = "Yellow light"

-- create class type of honest numbers
class Honest a where
    eq :: a -> Bool
instance Honest Integer where
    eq a
        | length [x | x <- [1..], even x, x == a] == 1 = True 
        | otherwise = False