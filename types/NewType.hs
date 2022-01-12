module NewType
(Point(..), Shape(..), area)
where

-- data Bool = False | True
data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point
    deriving (Show)

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- someFunc :: Circle -> Float - doesnt working





-- data Person = Person String String Int Float String String deriving (Show)

-- firstName :: Person –> String
-- firstName (Person firstname _ _ _ _ _) = firstname
-- lastName :: Person –> String
-- lastName (Person _ lastname _ _ _ _) = lastname
-- age :: Person –> Int
-- age (Person _ _ age _ _ _) = age
-- height :: Person –> Float
-- height (Person _ _ _ height _ _) = height
-- phoneNumber :: Person –> String
-- phoneNumber (Person _ _ _ _ number _) = number
-- flavor :: Person –> String
-- flavor (Person _ _ _ _ _ flavor) = flavor

-- works like

data Person = Person { 
    firstName :: String,
    lastName :: String,
    age :: Int,
    height :: Float,
    phoneNumber :: String,
    flavor :: String 
} deriving (Show)

data Car = Car {
    mark :: String,
    number :: String
} deriving (Show, Eq)

data Vector a = Vector a a a deriving(Show)
vplus :: (Num a) => Vector a -> Vector a -> Vector a
vplus (Vector i j k) (Vector a b c) = Vector(i + a) (j + b) (k + c)