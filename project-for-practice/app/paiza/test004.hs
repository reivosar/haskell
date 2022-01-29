module Main where

import Lib

-- 数値 N が入力されます。1 から N までの数値をすべて、改行区切りで出力してください。
main :: IO ()
main = getLine >>= \str -> mapM_ print $ take (read str :: Int) [1..]
