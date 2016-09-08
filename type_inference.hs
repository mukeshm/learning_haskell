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
