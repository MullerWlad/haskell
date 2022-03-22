vCilinder :: Floating a => a -> a -> a
vCilinder r h = 
    let sBottom = pi * let square x = x * x 
            in square r
    in sBottom * h

squares :: (Integer, Integer) -> (Integer, Integer)
squares (a, b) = let square x = x * x in (square a, square b)

calcBmis :: [(Double, Double )] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w * h]