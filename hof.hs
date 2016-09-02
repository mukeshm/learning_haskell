-- A function that takes functions as parameters and/or return
-- functions is return values are called a higher order function

-- filter function
filter' :: (a -> Bool) -> [a] -> [a]
filter' f [] = []
filter' f (x:xs) = case f x of
                True -> x : filter' f xs
                False -> filter' f xs

-- map function
map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = (f x) : map' f xs