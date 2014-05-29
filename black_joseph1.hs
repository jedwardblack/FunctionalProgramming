--Joseph E. Black

elemNum e [] = 0
elemNum e (x:xs)
	|x==e      = 1 + (elemNum e xs)
	|otherwise = elemNum e xs

myLast [x] = x
myLast (x:xs) = myLast xs

myInit [x] = []
myInit (x:xs) = x:myInit xs

myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myLast (x:xs):myReverse (myInit (x:xs))

myDrop x [] = []
myDrop 0 (x:xs) = (x:xs)
myDrop x (y:ys) = myDrop (x-1) ys
