data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving(Show)
-- using recoursive structure of data

tree :: Tree Integer 
tree = Node 2 (Node 3 Empty Empty) (Node 4 Empty Empty)