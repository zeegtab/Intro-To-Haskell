module BasicFunctions where

-- pre n >= 0
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib' :: Int -> Int
fib' n = fib'' 0 1 n

fib'' :: Int -> Int -> Int -> Int
fib'' k _ 0  = k
fib'' k k' n = fib'' k' (k + k') (n - 1)
