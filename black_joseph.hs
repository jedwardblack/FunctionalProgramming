--Joseph E. Black

orderTriple (x,y,z)
	|x<=y && y<=z            = (x,y,z)
	|x>=y && y>=z && z<=x    = (z,y,x)
	|z<=x && x<=y            = (z,x,y)

divisors x = ([y | y <- [1..x], (x `mod` y)==0]) 

isPrime x = (divisors x == [1,x])

matches x [] = []
matches x (y:ys)
	|x==y       = y:(matches x ys)
	|otherwise  = matches x ys