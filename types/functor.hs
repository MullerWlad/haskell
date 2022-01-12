-- functor defines only one function
-- class Functor f where
--      fmap :: (a -> b) -> f a -> f b

-- let's represent map throw fmap
-- in other words 
-- instance Functor [] where
--      fmap = map

data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving(Eq)

-- Tree is also functor 
treeMap :: (a -> b) -> Tree a -> Tree b 
treeMap f (Node x left right) = Node (f x) (treeMap f left) (treeMap f right)
-- define the instance of Tree
instance Functor Tree where
    fmap f Empty = Empty
    fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

-- :k Int ----> *
-- :k Either ----> * -> * -> *
-- :k Either Int ----> * -> *
-- :k Either String Int ----> *
-- :k Tree ----> * -> *

-- for Tofu
class Tofu t where
    tofu :: j a -> t a j
-- let's find :k Tofu ----> 
    -- :k a => *
    -- :k j => * -> *
    -- :k t => * -> (* -> *) -> * 
    -- :k Tofu => (* -> (* -> *) -> *) -> Constraint
data Frank a b = Frank {
    field :: b a
} deriving(Show)
-- :k a => *
-- :k b => * -> *
-- :k Frank => * -> (* -> *) -> *, because of carring


