--class Eq a where
    --(==) :: a -> a -> Bool 
    --(/=) :: a -> a -> Bool
    --x == y = not (x /= y)
    --x /= y = not (x == y)

-- if we want to have a child-class to Eq let's do it like...
-- class (Eq a) => Num a where ...

{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

data TrafficLight = Red | Yellow | Green | Timeout deriving(Show) -- using deriving

instance Eq TrafficLight where
    Red == Red = True 
    Yellow == Yellow = True 
    Green == Green = True 
    _ == _ = False

-- instance Show TrafficLight where
    -- show Red = "Red light"
    -- show Green = "Green light"
    -- show Yellow = "Yellow light"
-- just use deriving(Show)

-- create class type of honest numbers
class Honest a where
    eq :: a -> Bool
instance Honest Integer where
    eq a
        | length [x | x <- [1..], even x, x == a] == 1 = True 
        | otherwise = False


-- inheritance of classes
data Vector = Bin {
    x :: Float,
    y :: Float
} | Tri {
    x :: Float,
    y :: Float,
    z :: Float
} deriving(Show, Eq)

class Mult a where
    multing :: a -> a

class Mult a => Summ a where
    summing :: a -> a -> a

--inheritence tells us that Vector must be instanced in Mult firstly
instance Mult Vector where
    multing (Bin x y) = Bin (x * 3) (y * 3)

--if Vector has not instance in Mult it will send error
instance Summ Vector where
    summing v v' = Bin (x a + x b) (y a + y b)
        where a = multing v
              b = multing v'


-- iheritance in other classes
-- here we using deriving Show to give instance for Position
data Position = Forward | Backward | Leftstep | Rightstep | Stop deriving(Show)

class Show a => Summaring a where
    (#) :: a -> a -> a
    infixr 1 #

instance Summaring Position where
    Forward # Backward = Stop
    Backward # Forward = Stop
    Leftstep # Rightstep = Stop
    Rightstep # Leftstep = Stop
    a # Stop = Stop
    a # Leftstep = Leftstep
    a # Rightstep = Rightstep
    a # Forward = Forward
    a # Backward = Backward


-- if we want's to get instance for all types other' class in current class
    -- instance Other a => Current (Type a) 
