module Main where

import Lib

-- 答えの数値を 1 行で出力してください。
main = putStrLn $ tail $ concatMap(" " ++) (map show [1..1000])