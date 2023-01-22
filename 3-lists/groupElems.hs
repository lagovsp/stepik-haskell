groupElems :: Eq a => [a] -> [[a]]
groupElems []  = []
groupElems rmd = toAdd : groupElems rest where
  (toAdd, rest) = span (== head rmd) rmd
