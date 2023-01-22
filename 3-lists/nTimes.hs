nTimes:: a -> Int -> [a]
nTimes a n
  | n < 0     = []
  | otherwise = take n $ repeat a
