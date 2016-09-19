-- Creating new data types
-- The way in which we can classify the values into similar types

-- Data declaration
-- A Data declaration is the way to declare the data type
-- A Data declaration has two parts
-- 1. Type constructor and 2. Data constructor

data Schrodinger = Dead | Alive

-- Here `data` means we are defining a data type
-- `Schrodinger` is Type constructor. This is what we use in Type signatures
-- `Dead` and `Alive` are our Data constructors. Which means when we say `Schrodinger` it
-- should either have value `Dead` or `Alive`

data BinaryTree a = Leaf | Node (BinaryTree a) a (BinaryTree a)

-- Here `BinaryTree a` is a Type constructor with a variable `a`. Here `a` is a polymorphic type
-- `BinaryTree` has two Data constructors `Leaf` and `Node` with three type arguments
