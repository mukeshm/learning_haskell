module Main where

-- Note that in Haskell if is an expression (which is converted to a value) and
-- not a statement (which is executed) as in many imperative languages
-- if <condition> then <true-value> else <false-value>
myAbs :: Integer -> Integer
myAbs x = if x < 0
  then negate x
  else x

main :: IO ()
main = do
  print $ myAbs 0
  print $ myAbs (-255)
  print $ myAbs 356
