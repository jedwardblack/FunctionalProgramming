--Joseph E. Black

xor x y
	| (x==True) && (x/=y) = x
	| (y==True) && (y/=x) = y
	| otherwise           = False

nAnd x y
	| (x==y) = not x
	| (x/=y)  = True

minThree x y z
	| x<=y && x<=z =x
	| y<=x && y<=z =y
	| otherwise    =z

rangeProduct m n
	| m>n       = 0
	| otherwise = product [x | x <- [m..n]]

fac n = rangeProduct 1 n

remainder m n
	| m<n = m
	| otherwise = remainder (m-n) n

divide m n
	| m<n = 0
	| otherwise = (divide (m-n) n) +1


