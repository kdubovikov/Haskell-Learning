module Duplicates where
import Data.List
duplicates :: (Eq a) => [a] -> [a]
duplicates = map head . group

main :: IO()
main = print $ duplicates [1, 1, 2, 2, 3, 3]
