-- Polymorphism : The condition of occurring in several different forms.
-- Above is the dictionary definition of polymorphism
-- So if a same function can be used with different types of data then
-- we can say that the function is polymorphic

-- In Haskell there are two broad categories: parametric polymorphism
-- and ad-hoc polymorphism

-- Parametric polymorphism
-- Parametric polymorphism refers to type variables that are fully polymorphic
-- They are unconstrained from any type classes, hence the type variables can take any form

id :: a -> a
id x = x

-- In the above example the type variable a can take any type

-- Ad-hoc polymorphism
-- In ad-hoc polymorphism we will have a type class constraints on the variable
-- The type variable can be of any type given which it should be an instance of the constrained type class

add :: Num a => a -> a -> a
add x y = x + y

-- In the above example the type variable is constrained to Num type class
-- So we can use any type which is an instance of Num ex : Int , Float
-- add 5 7
-- add 6.0 7.5