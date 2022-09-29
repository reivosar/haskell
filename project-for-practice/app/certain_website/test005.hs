module Main where

import Lib

-- ■ 問題1
-- 10以下の自然数のうち、3または5の倍数であるものをすべて列挙すると、3, 5, 6, 9が得られる。
-- これらの倍数の和は23である．
-- 与えられた数の下にある3または5のすべての倍数の和を返すように解を完成させてください．
solution :: Integer -> Integer
solution number = sum $ filter (\n -> (mod n 3 == 0) || (mod n 5 == 0)) [1..number-1]

main :: IO()
main = print $ solution 10