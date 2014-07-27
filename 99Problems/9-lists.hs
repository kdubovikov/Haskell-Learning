module LastElem  where

-- Problem 1 - Last element
lastElem :: [a] -> a
lastElem [x] = x
lastElem (_:xs) = lastElem xs

main :: IO()
main = print $ lastElem [1..10]
