module Main where

import Lib

-- グローバル変数
global_bool   = True
global_char   = 'G'
global_string = "Global" 
global_int    = 123456789

main :: IO ()
main = do
    print "Grobal variable"
    print global_bool
    print global_char
    print global_string
    print global_int
    print "=============="
    print "Local variable"
    print bool
    print char
    print string
    print int
    -- ローカル変数
    where
        bool   = False
        char   = 'L'
        string = "Local" 
        int    = 987654321