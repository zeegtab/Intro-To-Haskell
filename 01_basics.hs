module Basics where

-- HASKELL VS. PYTHON
addTwoNums :: Int -> Int -> Int
addTwoNums x y
    = x + y

addThreeNums :: Int -> Int -> Int -> Int
addThreeNums x y z
    = addTwoNums (addTwoNums x y) z

-- point-free
addThreeNums' :: Int -> Int -> Int -> Int
addThreeNums' x y 
    = addTwoNums (addTwoNums x y)

isGreaterThan :: Int -> Int -> Bool
isGreaterThan x y
    = x > y




