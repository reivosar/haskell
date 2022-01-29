module Main where

import Lib
import Data.List

num_list = [-2, -1 ,0 , 1, 2 ]

main :: IO ()
main =  print $ sort [x * x | x <- num_list]