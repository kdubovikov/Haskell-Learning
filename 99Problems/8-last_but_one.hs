module LastButOne where

--Problem 2 - last but one
lastButOne :: [a] -> a
lastButOne xs = reverse xs !! 1
-- the other solution may be last . init

main :: IO() 
main = print $ lastButOne [1..10]
