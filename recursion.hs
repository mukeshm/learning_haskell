-- factorial of a number
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

factorial1 :: Integer -> Integer
factorial1 n = if n == 0
               then 1
               else n * factorial1 (n-1)

factorial2 :: Integer -> Integer
factorial2 n
        | n == 0 = 1
        | otherwise = n * factorial2 (n-1)


-- sum of all the elements of an list
sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- product of all the elements of an list
product' :: [Int] -> Int
product' [] = 1
product' (x:xs) = x * product' xs