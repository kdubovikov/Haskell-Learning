module ReverseList where
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]

main :: IO()
main = print $ rev [1..10]
