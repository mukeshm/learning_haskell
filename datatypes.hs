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

-- newtype
-- creating is a Data type using newtype is similar to Data declaration
-- The only restriction is newtype should have exactly single unary data constructor

newtype UUID = UUID String

-- newtype is a way to define a data type, so we can use the newtype in synonymous with Data type

getStringFromUUID :: UUID -> String
getStringFromUUID (UUID s) = s

-- type
-- type is used to create an alias to an existing data type.

type Name = String
type Age = Int
type Married = Bool

-- Here the types `name` `Age` and `Married` are just aliases to String, Int and Bool
-- prelude > :info String
-- o/p : type String = [Char]   -- Defined in ‘GHC.Base’
-- In Haskell String is just an alias to list of chars

-- Record syntax in data declarations

data Address' = Address' String String String String String String

-- The above declaration looks confusing, so we can rewrite it
-- using the record syntax as below

data Address = Address { doorNo   :: String
                        , street  :: String
                        , city    :: String
                        , state   :: String
                        , country :: String
                        , pinCode :: String
                        }

-- prelude > :t Address'
-- Address' :: String -> String -> String -> String -> String -> String -> Address'

-- prelude > :t Address
-- Address :: String -> String -> String -> String -> String -> String -> Address

-- Both Address' and Address have similar type signatures
-- But record syntax is much more easier to understand
-- By using record syntax, haskell has already created functions
-- `doorNo`, `street`, `city`, `state`, `country` and `pinCode` which takes a value
-- of type Address and returns back the values from the respective fields
-- ex :-
-- prelude> :type pinCode
-- pinCode :: Address -> String
-- prelude> :type doorNo
-- doorNo :: Address -> String
