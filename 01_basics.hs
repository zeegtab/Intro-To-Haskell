module Basics where

-- BASIC FUNCTIONS
addTwoNums :: Int -> Int -> Int
addTwoNums x y
    = x + y

addThreeNums :: Int -> Int -> Int -> Int
addThreeNums x y z
    = addTwoNums x (addTwoNums y z)

isGreaterThan :: Int -> Int -> Bool
isGreaterThan x y
    = x > y



