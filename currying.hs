-- Currying is the process of transforming a function that takes multiple arguments
-- into a function that takes just a single argument and returns another function
-- if any arguments are still needed

sum' :: Int -> Int -> Int
sum' x y = x + y

-- all functions in Haskell take just one argument
-- sum' :: Int -> Int -> Int can be written as
-- sum' :: Int -> (Int -> Int)
-- sum' takes the first argument and returns function which takes one argument
-- ex :type sum' 3 gives
-- sum' 3 :: Int -> Int
-- or we can call function sum' as
-- (sum' 5) 6
