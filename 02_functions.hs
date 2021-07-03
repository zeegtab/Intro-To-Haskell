module BasicFunctions where

-- FIBONACCI FUNCTIONS
-- pre n >= 0
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- lower complexity
fib' :: Int -> Int
fib' n = fib'' 0 1 n

-- helper functions for fib'
fib'' :: Int -> Int -> Int -> Int
fib'' k _ 0  = k
fib'' k k' n = fib'' k' (k + k') (n - 1)

-- REMAINDER
remainder :: Int -> Int -> Int
remainder num quot
    | num < quot = num
    | otherwise  = remainder (num - quot) quot

