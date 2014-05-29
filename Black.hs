--Joseph E. Black

square x = x * x

mysum []     = 0
mysum (x:xs) = x + mysum xs

myfoldr op base []     = base
myfoldr op base (x:xs) = op x (myfoldr op base xs)

mymap f []     = []
mymap f (x:xs) = f x:mymap f xs

myLength [] = 0
myLength (x:xs) = 1 + (myLength xs)

squares (x:xs) = mymap square (x:xs)

sumsquares (x:xs) = mysum (squares (x:xs))

sumsquares2 (x:xs) = myfoldr (+) 0 (squares (x:xs))