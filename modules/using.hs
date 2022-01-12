import Data.List
-- import Data.List (nub, sort)
-- import Data.List hiding (nub)
-- import qualified Data.Map
-- import qualified Data.Map as M

import Xpo.Hi (hello)
import SomeModule

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

say = hello
sayAlso = something 