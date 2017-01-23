module Bob exposing (hey)

import Regex exposing (contains, regex)
import String exposing (endsWith, trim)


isEmpty : String -> Bool
isEmpty message =
    trim message == ""


isQuestion : String -> Bool
isQuestion =
    endsWith "?"


isAllUpperCase : String -> Bool
isAllUpperCase message =
    hasUpper message
        && not (hasLower message)


hasUpper : String -> Bool
hasUpper =
    contains (regex "[A-Z]")


hasLower : String -> Bool
hasLower =
    contains (regex "[a-z]")


hey : String -> String
hey message =
    if isEmpty message then
        "Fine. Be that way!"
    else if isAllUpperCase message then
        "Whoa, chill out!"
    else if isQuestion message then
        "Sure."
    else
        "Whatever."
