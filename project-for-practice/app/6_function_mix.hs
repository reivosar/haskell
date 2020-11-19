module Main where

import Lib

-- (1) 引数と戻り値の数と型が同じ場合
a'1 x = x + 2
b'1 x = x * 3
mix'1 = a'1 . b'1 --b'1から評価されその後b'2が実行される

-- (2) 引数の型は同じだが戻り値の型が異なる場合
a'2 x = "Result:" ++　show x 
b'2 x = x * 3
mix'2  = a'2 . b'2 

-- (3) 引数と戻り値の型がそれぞれ異なる場合
a'3 x = (read x :: Int)
b'3 x = show (x * 3)
mix'3  = a'3 . b'3 

-- (4) 引数の型は同じだが、数が異なる場合
-- これは多少ややこしい・・・
-- 「a'4 . b'4」という合成は出来ない。
-- 処理的には(Int -> Int) -> (Int -> Int -> Int) -> Intとなり
-- b'4の第2引数については、未定義扱いになるため。
-- しかし、「b'4 . a'4」という合成は可能。
-- (a'4.)はpoint-free styleといい、仮引数が取れない場合このように書く。
-- Javaでいう可変長引数のような扱いか？じゃあ、引数の型が異なる場合はどうなる？
a'4 x    = x + 3
b'4 x y  = x * y
mix'4     = (a'4.) . b'4

main :: IO ()
main = do
     print(mix'1 1)   -- 5
     print(mix'2 3)   -- "Result:9"
     print(mix'3 5)   -- 15
     print(mix'4 7 2) -- 17