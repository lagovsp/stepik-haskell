sum'n'count :: Integer -> (Integer, Integer)
sum'n'count n = (findSum 0 n, findLen 0 True n) where
  findSum acc n
   | n < 0     = findSum acc (-n)
   | n == 0    = acc
   | otherwise = findSum (acc + mod n 10) (div n 10)
  findLen acc unit n
   | n < 0              = findLen acc unit (-n)
   | n == 0 && unit     = 1
   | n == 0 && not unit = acc
   | otherwise          = findLen (acc + 1) False (div n 10)
