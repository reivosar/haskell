module Main where

import Lib

-- モデル定義(変数名が重複するとエラーになるので注意)
data Person     = Person     { personName :: PersonName, age :: Age, sex ::Sex }  deriving (Show, Eq)
data PersonName = PersonName { personNameValue :: String}  deriving (Show, Eq)
data Age        = Age        { ageValue :: Int}  deriving (Show, Eq)
data Sex        = Male | Famele | Other deriving (Show, Eq)

changeName :: Person -> PersonName -> Person
changeName p personName = Person { personName = personName, age = (age p), sex = (sex p) }

changeAge :: Person -> Age -> Person
changeAge p age = Person { personName = (personName p), age = age, sex = (sex p) }

main :: IO ()
main = do
    -- 以下のように書くと、状態を持ってしまう。
    -- ただし、各メソッドの戻り値をunitにすると、イベント発行の
    -- 遅延実行が難しいような気がする。
    -- そもそもp.changeName (PersonName "ChangeName") ように
    -- 書きたいのだが、出来ないような気がする(要調査)
    print $ p
    let p' = changeName p (PersonName "ChangeName") 
    print $ p'
    let p'' = changeAge p (Age 40)
    print $ p''
    where
        -- なんて簡潔！
        p = Person (PersonName "Adult person") (Age 20) Other