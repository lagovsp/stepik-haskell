seqA :: Integer -> Integer
seqA n
 | n == 0    = 1
 | n == 1    = 2
 | n == 2    = 3
 | otherwise = 
  let helper pr prpr prprpr cur n
       | cur == n  = pr + prpr - 2 * prprpr
       | otherwise = helper (pr + prpr - 2 * prprpr) pr prpr (cur + 1) n
  in helper 3 2 1 3 n
