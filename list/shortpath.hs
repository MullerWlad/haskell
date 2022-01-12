import Graph

way's :: Graph String Integer
way's = Graph [
        Arrow {from = Node {label = "start"}, to = Node {label = "a1"}, inscr = 50}, 
        Arrow {from = Node {label = "a1"}, to = Node {label = "b1"}, inscr = 5},
        Arrow {from = Node {label = "start"}, to = Node {label = "a2"}, inscr = 10},
        Arrow {from = Node {label = "a2"}, to = Node {label = "b2"}, inscr = 90},
        Arrow {from = Node {label = "a1"}, to = Node {label = "a2"}, inscr = 30},
        Arrow {from = Node {label = "a2"}, to = Node {label = "a1"}, inscr = 30},
        Arrow {from = Node {label = "b2"}, to = Node {label = "end"}, inscr = 40},
        Arrow {from = Node {label = "b1"}, to = Node {label = "end"}, inscr = 30}
        ]

finder :: (Ord a, Ord b) => a -> Graph a b -> [Connection a b]
finder _ (Graph []) = []
finder name paths
    | name == s = head (content paths) : finder name (Graph (tail $ content paths))
    | otherwise = finder name (Graph (tail $ content paths))
    where s = label $ from $ head $ content paths

solver :: (Ord a, Ord b) => [Connection a b] -> Connection a b
solver conn = head [x | x <- conn, inscr x == minimum [inscr y | y <- conn]]

step :: (Ord a, Ord b) => a -> Graph a b -> Connection a b
step name paths = solver $ finder name paths

way :: (Ord b) => String -> Graph String b -> [Connection String b] -> [Connection String b]
way "end" _ _ = []
way name paths line = path : way nextName paths line
    where path = step name paths
          nextName = label $ to path

short :: (Num b, Ord b) => Graph String b -> ([String], b)
short paths = (dots, len)
    where dots = [label $ to x | x <- arrows]
          len = foldr1 (+) [inscr x | x <- arrows]
          arrows = way "start" paths []