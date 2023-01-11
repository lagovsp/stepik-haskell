fibonacci :: Integer -> Integer
fibonacci n | n == 0    = 0
            | n == 1    = 1
            | n < 0     = fibonacci (-n) * (-1) ^ (-n + 1)
            | otherwise = helper 0 1 (n - 1)

helper :: Integer -> Integer -> Integer -> Integer
helper prev cur more | more == 0 = cur
                     | otherwise = helper cur (prev + cur) (more - 1)
