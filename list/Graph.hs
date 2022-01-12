module Graph where

data Connection a b = Arrow {
    from :: Node a,
    to :: Node a,
    inscr :: b
} deriving(Show)

newtype Node a = Node {
    label :: a
} deriving (Show)

newtype Graph a b = Graph {
    content :: [Connection a b]
} deriving(Show)


--a :: Node Integer
--b :: Node Integer

--a = Node {
    --label = 23
--}
--b = Node {
    --label = 43
--}

--connection :: Connection Integer Integer
--connection = Link {
    --pair = (a, b),
    --inscr = label a + label b
--}