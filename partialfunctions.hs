-- partial functions

-- A partial function is a function that is not defined
-- for all possible arguments of the specified type.

-- lets write a function which takes a list as parameter and
-- returns the first element of the list

head' :: [a] -> a
head' (x:xs) = x

-- The type signature tells that it takes a list of type 'a'
-- and returns 'a'
-- ex:
-- i/p : head' [1,2,3,4,5]
-- o/p : 1
-- i/p : head' [1]
-- o/p : 1
-- i/p : head' []
-- o/p : ???
-- here the function fails to give output for the empty list
-- so the function has not defined any implementation for empty list