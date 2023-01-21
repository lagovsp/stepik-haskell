avg :: Int -> Int -> Int -> Double
avg x y z = (/3) $ sum $ map fromIntegral [x, y, z]
