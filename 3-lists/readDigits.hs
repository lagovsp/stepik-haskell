import Data.Char
readDigits :: String -> (String, String)
readDigits = span isDigit
