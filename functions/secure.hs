sayX :: String -> String
sayX animal
    | animal == "Cow" = "Muuu"
    | animal == "Kat" = "Meow"
    | animal == "Owl" = "Ouw Ouw"
    | animal == "Dog" = "Gaw Gaw"
    | otherwise = "I do not know whis animal"

neuronExperiencer :: String -> Integer
neuronExperiencer repl
    | repl == "Hello" = 2
    | repl == "Hi" = 1
    | repl == "Shit" = -1
    | repl == "Fuck you" = -2
    | otherwise = 0

neuronResulter :: Integer -> String
neuronResulter exp
    | exp < -10 = "You're bad human"
    | exp < -30 = "Fuck you"
    | exp < -50 = "I'LL KILL YOU"
    | exp > 10 = "Hi"
    | exp > 30 = "What's up"
    | exp > 50 = "I love you <3"
    | otherwise = "..."

summator :: [String] -> Integer
summator [] = 0
summator (x:xs) = (neuronExperiencer x) + summator xs

saySomething :: [String] -> String
saySomething moments = neuronResulter (summator moments)