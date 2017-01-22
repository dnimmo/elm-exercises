module Bob exposing (hey)

import Char
import String
import Regex exposing (contains, regex)


isQuestion : String -> Bool
isQuestion =
    String.endsWith "?"


isAllUpperCase : String -> Bool
isAllUpperCase message =
    hasUpper message && not (hasLower message)


hasUpper : String -> Bool
hasUpper =
    contains (regex "[A-Z]")


hasLower : String -> Bool
hasLower =
    contains (regex "[a-z]")


isEmpty : String -> Bool
isEmpty =
    contains (regex "^\\s*$")


isAlphabeticalChar : Char -> Bool
isAlphabeticalChar character =
    if contains (regex "[A-Za-z]") (toString character) then
        True
    else
        False


noCharacters : String -> Bool
noCharacters message =
    if String.length (String.filter isAlphabeticalChar message) > 0 then
        False
    else
        True


hey : String -> String
hey message =
    if isEmpty message then
        "Fine. Be that way!"
    else if isQuestion message && not (isAllUpperCase message) then
        "Sure."
    else if isAllUpperCase message && not (noCharacters message) then
        "Whoa, chill out!"
    else
        "Whatever."
