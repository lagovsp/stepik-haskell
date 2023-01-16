integration f a b = countIntegral 0 a (f a) 1 n where
  n = 1000
  step = (b - a) / n
  countIntegral acc prevX prevVal i n
   | i == n    = s
   | otherwise = countIntegral s (prevX + step) newVal (i + 1) n where
     s = acc + step * (prevVal + newVal) / 2
     newVal = f (prevX + step)
