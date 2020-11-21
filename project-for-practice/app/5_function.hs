module Main where

import Lib

-- 関数の型を明示する場合はこのように記載する
-- (省力可能)
add :: Int -> Int -> Int
add x y = x + y

main :: IO ()
main = do
     print(add 1 2)

