module Main where

import Lib
import Data.Char

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
main = print $ xo "ab" 