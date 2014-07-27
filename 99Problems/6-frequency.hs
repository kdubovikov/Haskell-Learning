module Frequency where
import Data.List

frequency xs = map (\x -> (length x,  head x)) $ group xs

main :: IO()
main = print $ frequency [1, 1, 2, 2, 3, 3]
