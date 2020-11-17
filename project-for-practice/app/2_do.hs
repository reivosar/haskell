module Main where

import Lib

main :: IO ()
-- 複数の文を以下のように実行する場合doが必要
main = do
    putStrLn "hello"
    print ","
    putStrLn "world"