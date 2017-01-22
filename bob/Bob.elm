module Bob exposing (hey)

import Char
import String
import Regex exposing (contains, regex)


isQuestion : String -> Bool
isQuestion =
    String.endsWith "?"


isUpperCase : String -> Bool
isUpperCase message =
    if (String.toUpper message) == message && not (noCharacters message) then
        True
    else
        False


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
    else if isQuestion message && not (isUpperCase message) then
        "Sure."
    else if isUpperCase message && not (noCharacters message) then
        "Whoa, chill out!"
    else
        "Whatever."
