module ElNum where
len :: [a] -> Integer
len [] = 0
len (_:xs) = 1 + len xs

main :: IO()
main = print $ len [1..10]
