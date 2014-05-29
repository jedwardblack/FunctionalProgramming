--Joseph E. Black

square x = x * x
add1 x   = x + 1
double x = 2 * x
multiply x y = x*y

addList [] = 0
addList (x:xs) = x + (addList xs)

composeList [] x                = x
composeList [fn] x              = fn x
composeList (fx:fxs) x          = fx (composeList fxs x)

scalarProduct xs ys = addList (zipWith multiply xs ys)

--scanl op x [z, z1, z2, ...] returns [x, z `op` x, (z `op` x) `op` z2, ((z `op` x) `op` z2) `op` z3, ...]

factorial = scanl (*) 1 [2..]

fibonacci = 0 : scanl (+) 1 fibonacci