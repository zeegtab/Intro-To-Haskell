module BasicFunctions where

-- SUCCESSOR FUNCTIONS
successor :: Int -> Int
successor x
    = x + 1

-- point-free (infix)
successor' :: Int -> Int
successor'
    = (+) 1

-- ADD-DIGIT FUNCTION
addDigit :: Int -> Int -> Int
addDigit num digit
    = num * 10 + digit

-- REMAINDER
remainder :: Int -> Int -> Int
remainder num quot
    | num < quot = num
    | otherwise  = remainder (num - quot) quot

-- FIBONACCI FUNCTIONS
-- naive implementation
-- pre n >= 0
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibbonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- more efficient
fib :: Int -> Int
fib n = fib' 0 1 n

-- helper function for fib'
fib' :: Int -> Int -> Int -> Int
fib' k _ 0  = k
fib' k k' n = fib' k' (k + k') (n - 1)

