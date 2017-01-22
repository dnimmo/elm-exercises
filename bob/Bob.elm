module Bob exposing (..)

import Char
import String
import Regex


isQuestion : String -> Bool
isQuestion message =
    if String.endsWith "?" message then
        True
    else
        False


isUpperCase : String -> Bool
isUpperCase message =
    if (String.toUpper message) == message && not (noCharacters message) then
        True
    else
        False


isEmpty : String -> Bool
isEmpty message =
    if String.length (String.trim message) == 0 then
        True
    else
        False


isAlphabeticalChar : Char -> Bool
isAlphabeticalChar character =
    if Regex.contains (Regex.regex "[A-Za-z]") (toString character) then
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
