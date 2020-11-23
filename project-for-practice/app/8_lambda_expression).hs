module Main where

add:: Int -> Int -> Int
-- 左辺での引数定義を右辺に持ってくると下記のようになる
add = \x  -> \y -> x + y
-- 当然「add x y = x + y」のようにも書ける

-- 高階関数
-- 関数を引数に取る記述方法。このコードは意味なし。
higher_order_function func x y = func x y

-- map関数
-- 下記と同じ動きをする
--  [x * g | x <- xs]
map_function xs g = map (* g) xs

-- filter関数(右畳み込み)
-- 下記と同じ動きをする
-- [x | x <- xs, x < g]
filter_function = \xs g -> filter (< g) xs

-- foldl関数(左畳み込み)
-- 以下のように配列の中身が処理される。
-- ((((((0-1)-2)-3)-4)-5)-0)
-- 要は0-1-2-3-4-5と計算したのと同じ
-- これは通常のループを想像するとわかりやすい
foldl_function xs = foldl (-) 0 xs  

-- foldr関数
-- 以下のように配列の中身が処理される。
-- 1-(2-(3-(4-(5-0))))) 
-- 要は1-2+3-4+5と計算したのと同じ
-- これは以下のように書き直すことができる
-- foldr_function []     = 0
-- foldr_function (x:xs) = x - foldr_function xs
foldr_function xs = foldr (-) 0 xs

main :: IO()
main = do
    print $ add 1 2
    print $ (\x -> \y -> x + y) 3 4       -- 無名関数方式
    print $ higher_order_function add 5 6 -- 高階関数
    print $ map_function    [1..5] 7      -- map関数
    print $ filter_function [1..5] 8      -- filter関数 
    print $ foldl_function  [1..5]        -- foldl関数
    print $ foldr_function  [1..5]        -- foldr関数
