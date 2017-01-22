module Bob exposing (..)

import String


hey : String -> String
hey message =
    if (String.toUpper message) == message then
        "Whoa, chill out!"
    else if String.endsWith "?" message then
        "Sure."
    else
        "Whatever."
