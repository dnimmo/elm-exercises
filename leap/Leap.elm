module Leap exposing (isLeapYear)


divisibleByFour number =
    rem number 4 == 0


isLeapYear year =
    if divisibleByFour year then
        True
    else
        False
