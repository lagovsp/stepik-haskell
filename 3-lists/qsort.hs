qsort :: Ord a => [a] -> [a]
qsort []    = []
qsort [x,y] = if x < y then [x,y] else [y,x]
qsort xs    = left ++ [head xs] ++ right where
  isLowerThanFst = (< head xs)
  left           = qsort $ filter isLowerThanFst xs
  right          = qsort $ filter (not . isLowerThanFst) (tail xs)
