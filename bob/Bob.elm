module Bob exposing (..)

import String


isQuestion : String -> Bool
isQuestion message =
    if String.endsWith "?" message then
        True
    else
        False


isUpperCase : String -> Bool
isUpperCase message =
    if (String.toUpper message) == message then
        True
    else
        False


hey : String -> String
hey message =
    if isUpperCase message then
        "Whoa, chill out!"
    else if isQuestion message then
        "Sure."
    else
        "Whatever."
