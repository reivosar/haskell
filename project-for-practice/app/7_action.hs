module Main where

import Data.Time.Clock
import Data.Time.Calendar
import Data.Time.Clock.POSIX

calcDayOfTheWeek :: Int -> Int -> Int -> Int
calcDayOfTheWeek year month day = mod (y1 + y2 + y3 + m1 - y4 + d1) 7
    where
        uppery = div year 100
        lowery = mod year 100
        y1 = lowery 
        y2 = div lowery 4
        y3 = div uppery 4
        y4 = uppery * 2
        m1 = div (13 * month + 8) 5
        d1 = day

toStringDayOfTheWeek :: Int -> IO String 
toStringDayOfTheWeek arg = 
    return (case arg of
                1 -> "Monday"
                2 -> "Tuesday"
                3 -> "Wednesday"
                4 -> "Thursday"
                5 -> "Friday"
                6 -> "Saturday"
                7 -> "Sunday"
                _ -> error "Illegal Aragument")

(year, month, day) = (2020, 11, 21)

main :: IO()
main = do
    let dayOfTheWeekNumber = calcDayOfTheWeek year month day
    -- 一時変数にAction（戻り値の型がIOの関数）からの結果を格納
    -- する際は以下のように書く
    dayOfTheWeek <- toStringDayOfTheWeek dayOfTheWeekNumber
    print dayOfTheWeek
    -- 一時変数を経由しない場合は、以下のように書く
    toStringDayOfTheWeek dayOfTheWeekNumber >>= print
    print =<< toStringDayOfTheWeek dayOfTheWeekNumber

