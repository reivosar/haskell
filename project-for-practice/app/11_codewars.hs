module Main where

import Lib
import Data.Char

-- codewarsの問題解答
-- Link https://www.codewars.com/

-- ■ 問題1
-- 10以下の自然数のうち、3または5の倍数であるものをすべて列挙すると、3, 5, 6, 9が得られる。
-- これらの倍数の和は23である．
-- 与えられた数の下にある3または5のすべての倍数の和を返すように解を完成させてください．
solution :: Integer -> Integer
solution number = sum $ filter (\n -> (mod n 3 == 0) || (mod n 5 == 0)) [1..number-1]

-- ■ 問題2
-- 整数 n > 1 を受け取り、最小値から最大値までの整数の除数 (1 と数値自体を除く) 
-- の配列を返します。数値が素数の場合は、文字列 '(integer) is prime'(C#ではnull) を返します 
divisors :: (Show a, Integral a) => a -> Either String [a]
divisors a 
    | null result = Left  ((show a) ++ " is prime")
    | otherwise   = Right result
    where
        result    = filter (\n -> (mod a n == 0)) [2..(a - 1)]

-- ■ 問題3
-- 文字列に同じ量の 'x' と 'o' があるかどうかをチェックします。このメソッドはブール値を返し、
-- 大文字小文字を区別しません。文字列は任意の char を含むことができます。
xo :: String -> Bool
xo str = x_count == o_count
    where
        count char = length . filter ((==) char . toLower)
        x_count    = count 'x' str
        o_count    = count 'o' str

main :: IO()
main = print 1