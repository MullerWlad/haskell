{--(<=<) :: Monad m => (b -> m c) -> (a -> m b) -> a -> m c
(f <=< g) a = g a >>= f
-- <=< is monad composition

a :: Integer -> Maybe Integer
a = (\x -> Just (x ^ 2)) <=< (\x -> Just (x + 3))--}


