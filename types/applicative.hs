--instance Functor Maybe where  
    --fmap func (Just val) = Just (func val)
    --fmap func Nothing = Nothing

--instance Functor ((->) r) where --> ((->) r) is constructor of functions
    --fmap :: (a -> b) -> ((->) r a) -> ((->) r b)
        --in other words fmap :: (a -> b) -> (r -> a) -> (r -> b)
    --fmap f g = f . g
        --in other words fmap = (.)
--fmap (f . g) = fmap f . fmap g
    -- in other words fmap (f.g) x = fmap f (fmap g x)

-- The synonymus of fmap is <$> 
    -- fmap f g == f . g == f <$> g
    -- fmap (+3) [1, 2, 3] == (+3) <$> [1, 2, 3] == [4, 5, 6]

--now about applicative

--class (Functor f) => Applicative f where
    --pure :: a -> f a
    --(<*>) :: f (a -> b) -> f a -> f b    is equal    f (a -> b) -> (f a -> f b)

--have an operator <*>
--fmap (*) Just 3 == Just (*3) == (*) <*> Just 3
a :: Maybe Integer
a = Just (+3) <*> Just 4

-- [(*2), (+3)] <*> [1, 2, 3] == [2, 4, 6, 4, 5, 6]
-- Just (+) <*> Just 3 <*> Just 5 == Just 8 == (Just (+) <*> Just 3) <*> Just 5
    -- :t (+) == Num a => a -> a -> a
    -- :t (+3) == Num a => a -> a
    -- :t (5 + 3) == Num a => a

--have a <$>
--(+) <$> Just 4 == Just (+4)
--b :: Maybe (Integer -> Integer)
b :: [Integer -> Integer]
b = (+) <$> [4]

b' :: Maybe (Integer -> Integer)
b' = (*) <$> Just 4

-- f <$> x <*> y <*> z == ((f <$> x) <*> y) <*> z
-- (++) <$> Just "джонтра" <*> Just "волта" == Just "джонтраволта"
-- (+) <$> Just 3 == Just (+) <*> Just 3 == Just (+3)