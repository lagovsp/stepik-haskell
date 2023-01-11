doubleFact :: Integer -> Integer
doubleFact n = if n == 0 || n == (-1) then 1 else n * doubleFact (n - 2)
