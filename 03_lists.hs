module Lists where

import Prelude hiding(sum)
import Data.List ( (\\) )

-- SUM
sum :: [Int] -> Int
sum [] 
    = 0
sum (x : xs)
    = x + sum xs

-- POSITION
pos :: Char -> String -> Int
pos c (s : s')
    | c == s    = 0
    | otherwise = 1 + pos c s'

-- OTHER FUNCTIONS
-- PRECEDES (pattern matching)
precedes :: String -> String -> Bool
precedes (s : []) (t : [])
    = s < t
precedes [] _ 
    = True
precedes _ []
    = False
precedes (s : s') (t : t')
    | s == t    = precedes s' t'
    | otherwise = s < t

-- PREFIXES
prefixes :: [t] -> [[t]]
prefixes [] 
    = []
prefixes (t : ts)
    = [t : ps | ps <- prefixes ts]

-- PERMUTATIONS OF A LIST
perms :: Eq a => [a] -> [[a]]
perms []
    = [[]]
perms xs
    = [ x : ps | x <- xs, ps <- perms (xs \\ [x])]