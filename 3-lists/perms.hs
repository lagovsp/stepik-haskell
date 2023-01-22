perms :: [a] -> [[a]]
perms [] = [[]]
perms xs = map (\x -> fst x) (getNonRedPs (prepare xs 0 []))

getNonRedPs :: [([a],[a])] -> [([a],[a])]
getNonRedPs []                      = []
getNonRedPs toRed@((_, []) : _)     = toRed
getNonRedPs toRed@((ans, rmd) : ps) = getNonRedPs (pairProducts 0 (ans, rmd) ++ getNonRedPs (tail toRed))

pairProducts :: Int -> ([a],[a]) -> [([a],[a])]
pairProducts _ pair@(ans, [])                        = [pair]
pairProducts n pair@(ans, rms) | n == length rms - 1 = [newPair]
                               | otherwise           = newPair : pairProducts (n + 1) pair
                               where rest            = (take n rms) ++ (drop (n + 1) rms)
                                     newPair         = (ans ++ [rms !! n], rest)

prepare :: [a] -> Int -> [([a],[a])] -> [([a],[a])]
prepare [] _ _                        = [([],[])]
prepare xs n ans | n == length xs - 1 = currentPair : ans
                 | otherwise          = prepare xs (n + 1) (currentPair : ans)
                 where currentPair    = ([xs !! n], (take n xs) ++ (drop (n + 1) xs))
