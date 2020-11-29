module Main where

import Lib

fizzbuzz :: Int -> String
fizzbuzz n = case (mod n 3, mod n 5) of
        (0,0) -> "FizzBuzz"
        (0,_) -> "Fizz"
        (_,0) -> "Buzz"
        _     -> (show n)

main :: IO ()
main = mapM_ (putStrLn . fizzbuzz) [1..100]
