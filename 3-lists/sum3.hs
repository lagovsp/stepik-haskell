sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 xs ys zs = sum2 xs $ sum2 ys zs where
  sum2 [] ys             = ys
  sum2 xs []             = xs
  sum2 (x : xs) (y : ys) = (x + y) : sum2 xs ys
