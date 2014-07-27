module NthItem where

nthItem :: [a] -> Int -> a
nthItem xs i = xs !! (i - 1)

main :: IO()
main = print $ nthItem [1..10] 5
