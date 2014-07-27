module Duplicates where
import Data.List
duplicates :: (Eq a) => [a] -> [[a]]
duplicates [] = []
duplicates (x:xs) = let (first, last) = span (==x) xs in
                  (x:first) : duplicates last

main :: IO()
main = print $ duplicates [1, 1, 2, 2, 3, 3]
