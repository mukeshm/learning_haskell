module Main where

-- A predicate is a function that returns true
-- or false for a given value
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

main :: IO ()
main = do
  print $ isPalindrome "1234321"
  print $ isPalindrome "1234567"
