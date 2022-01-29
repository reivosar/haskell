module Main where

import Lib
import Data.Char
import Data.List

-- ■ 問題4
-- 整数を可能な限り最大の値に並べ替える関数を書く。
-- 冗長に書くと以下のようになる。
superSize :: Integer -> Integer
superSize n = result 
    where
        sorted_array = sortBy (flip compare) $ map (\x -> read (x:[]) :: Integer) (show n)
        result = read $ concat $ map (show) sorted_array :: Integer
-- ベストな書き方は下記。
-- superSize n = read $ reverse $ sort $ show n
-- もしくは
-- superSize = read . reverse . sort . show 

main :: IO()
main = print $ superSize 113154