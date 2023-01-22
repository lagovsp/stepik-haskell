oddsOnly :: Integral a => [a] -> [a]
oddsOnly xs
  | xs == []      = []
  | odd $ head xs = head xs : restOnly xs
  | otherwise     = restOnly xs
  where restOnly = oddsOnly . tail
