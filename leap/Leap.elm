module Leap exposing (isLeapYear)


divisibleByFour : Int -> Bool
divisibleByFour =
    divisibleBy 4


divisibleByOneHundred : Int -> Bool
divisibleByOneHundred =
    divisibleBy 100


divisibleByFourHundred : Int -> Bool
divisibleByFourHundred =
    divisibleBy 400


divisibleBy : Int -> Int -> Bool
divisibleBy division number =
    rem number division == 0


isLeapYear year =
    divisibleByFour year
        && not (divisibleByOneHundred year)
        || (divisibleByOneHundred year
                && divisibleByFourHundred year
           )
