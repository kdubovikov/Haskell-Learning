module Main where

main :: IO ()
main = do tests <- getLine
          contents <- getContents
          mapM_ (printPrimesBetween . (map read) . words) $ take (read tests) (lines contents)

printPrimesBetween :: (Floating a, Enum a, RealFrac a, Integral a, Show a) => [a] -> IO ()
printPrimesBetween [a,b] = do mapM_ (putStrLn . show) $ filter (>=a) $ primesTo b
                              putChar '\n'

primesTo :: (Integral a, Enum a, RealFrac a, Floating a) => a -> [a]
primesTo n | n > 1 = 2:(sieve [3,5..floor(sqrt(n))])
           | otherwise = []

-- | The Sieve of Eratosthenes for prime calculation
sieve :: Integral a => [a] -> [a]
sieve [] = []
sieve (p:ps) | p > 1 = p:(sieve $ filter ((> 0) . (`mod` p)) ps)
