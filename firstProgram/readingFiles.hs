import Control.Monad
import Data.Char
import System.IO

-- main = forever $ do
    -- l <- getLine
    -- putStrLn l

-- using ./readingFiles < readme.txt

main = do
    handle <- openFile "readme.txt" ReadMode
    content <- hGetContents handle
    putStr content
    hClose handle