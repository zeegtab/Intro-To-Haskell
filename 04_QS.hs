module QuickSort where
import Data.List

-- QUICKSORT
-- 1. find pivot
-- 2. split list into two lists
-- 3. perform quicksort on two lists
-- 4. join first list, then pivot, then second list

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort list = quicksort front ++ [pivot] ++ quicksort back
    where
        (pivot : xs) = list
        front = filter (< pivot) xs
        back = xs \\ front
