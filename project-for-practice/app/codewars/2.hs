module Main where

import Lib
import Data.Char
import Data.List

-- ■ 問題2
-- 整数 n > 1 を受け取り、最小値から最大値までの整数の除数 (1 と数値自体を除く) 
-- の配列を返します。数値が素数の場合は、文字列 '(integer) is prime'(C#ではnull) を返します 
divisors :: (Show a, Integral a) => a -> Either String [a]
divisors a 
    | null result = Left  ((show a) ++ " is prime")
    | otherwise   = Right result
    where
        result    = filter (\n -> (mod a n == 0)) [2..(a - 1)]

main :: IO()
main = print $ divisors 10