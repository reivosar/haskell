module Main where

import Lib

fizzbuzz :: Int -> String
fizzbuzz i 
    | (mod i 15) == 0 = "FizzBuzz"
    | (mod i 3)  == 0 = "Fizz"
    | (mod i 5)  == 0 = "Buzz"
    | otherwise       = (show i)

main :: IO ()
main = print $ map (fizzbuzz) [1..100]
