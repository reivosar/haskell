module Main where

import Lib

--Haskellでは繰り返し構文が存在しないが
--以下のようにに再帰的に処理を行うことで
--疑似的に繰り返し処理を実行できる
for min max
    | min == max = do
        return max
    | otherwise = do
        print min
        return =<< for (min + 1) max

main :: IO ()
main = do
     print =<< for 1 10

