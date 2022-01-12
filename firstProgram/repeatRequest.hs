data SomeWords = Word1 | Word2 | Word3
instance Show SomeWords where
    show Word1 = "Dog"
    show Word2 = "Cat"
    show Word3 = "Cow"

main :: IO()
main = do
    name <- getLine 
    putStrLn name
    print Word1
    print Word2
    print Word3
    main

-- to repeat we can use also 
-- main = forever $ do ...