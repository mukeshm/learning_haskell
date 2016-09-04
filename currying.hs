-- Currying

-- Currying is the process of transforming a function that takes multiple arguments
-- into a function that takes just a single argument and returns another function
-- if any arguments are still needed

add' :: Int -> Int -> Int
add' x y = x + y

-- all functions in Haskell take just one argument
-- add' :: Int -> Int -> Int can be written as
-- add' :: Int -> (Int -> Int)Partial application in Haskell involves passing less than the full number of arguments to a function that takes multiple arguments
-- add' takes the first argument and returns function which takes one argument
-- ex :type add' 3 gives
-- add' 3 :: Int -> Int
-- or we can call function add' as
-- (add' 5) 6

-- partial application

-- Partial application in Haskell involves passing less than the full number
-- of arguments to a function that takes multiple arguments

addFive = add' 5

-- here addFive is a function which take one argument and adds 5 to argument
-- addFive is obtained by partially applying add' function with one argument