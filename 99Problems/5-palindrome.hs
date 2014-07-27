module Palindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

main :: IO()
main = print $ isPalindrome [1, 2, 1] 
