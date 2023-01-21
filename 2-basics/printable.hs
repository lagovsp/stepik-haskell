instance (Printable a, Printable b) => Printable (a,b) where
  toString x = "(" ++ (toString $ fst x) ++ "," ++ (toString $ snd x) ++ ")"
