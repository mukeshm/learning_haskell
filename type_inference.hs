-- Type inference

-- We don't need to define a type to every expression
-- In fact haskell can itself determine the types for the expression
-- and this is called as type inference

arrConcat x y = x ++ y
sayHello name = "Hello " ++ name

-- Here we have defined two functions

-- arrConcat has the type signature
-- prelude> :type arrConcat
-- arrConcat :: [a] -> [a] -> [a]
-- It has inferred that the function takes two parameters of
-- type list of any type and returns the list of the same type

-- sayHello has the type signature
-- prelude> :type sayHello
-- sayHello :: [Char] -> [Char]
-- Here it has inferred that the function takes a parameter of type
-- list of char or string and returns back list of characters

-- Asserting types for declarations
-- The type inference always tries to represent a variable in a more polymorphic form.
-- When your project becomes more complex then its always better to always define a variable with a type
-- We may need to define a variable in a more concrete type rather that a polymorphic type
-- Then we can explicitly specify a type to a variable

multiplyBy7 x  = x * 7

-- prelude > :type multiplyBy7
-- multiplyBy7 :: Num a => a -> a

-- prelude > :type multiplyBy7 4
-- multiplyBy7 4 :: Num a => a


x = 10

-- prelude > :type x
-- x :: Num a => a
-- so here we may only need x to be Int and not Float

y = 10 :: Int

-- prelude > :type y
-- y :: Int

-- prelude > :type multiplyBy7 y
-- multiplyBy7 y :: Int

-- so now we can make sure the variable is of a specific type instead of polymorphic type
