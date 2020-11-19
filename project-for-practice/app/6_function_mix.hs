module Main where

import Lib

-- (1) 引数と戻り値の数と型が同じ場合
a'1 x = x + 2
b'1 x = x * 3
mix1 = a'1 . b'1 --b'1から評価されその後b'2が実行される

-- (2) 引数の型は同じだが戻り値の型が異なる場合
a'2 x = "Result:" ++　show x 
b'2 x = x * 3
mix2  = a'2 . b'2 

-- (3) 引数と戻り値の型がそれぞれ異なる場合
a'3 x = (read x :: Int)
b'3 x = show (x * 3)
mix3  = a'3 . b'3 

main :: IO ()
main = do
     print(mix1 1) --5
     print(mix2 3) --"Result:9"
     print(mix3 5) --15