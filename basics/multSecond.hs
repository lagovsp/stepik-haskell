import Data.Function

multSecond = g `on` h

g x y = x * y
h x = snd x
