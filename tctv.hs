-- Typeclass constrained type variables

-- lets define a function which take two integer parameters and outputs an integer

addStuff :: Int -> Int -> Int
addStuff x y = x + y - 5

-- i/p : addStuff'  3 7
-- o/p : 5

-- here the function explicitly defined saying it only takes integers
-- what if we want to give floats ??

addStuff' :: (Num a ) => a -> a -> a
addStuff' x y = x + y - 5

-- In the above function we have replaced Int type with a variable 'a'
-- The variable 'a' here is a typeclass constrained type variable
-- 'a' here is constrained to Num typeclass
-- so we can pass any values of types which are instances of Num typeclass
-- like Int and Float

-- i/p : addStuff'  3.0 7.5
-- o/p : 5.5