module ScrabbleScore exposing (..)


getPointValue : Char -> Int
getPointValue letter =
    if List.member letter [ 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' ] then
        1
    else if List.member letter [ 'D', 'G' ] then
        2
    else if List.member letter [ 'B', 'C', 'M', 'P' ] then
        3
    else if List.member letter [ 'F', 'H', 'V', 'W', 'Y' ] then
        4
    else if letter == 'K' then
        5
    else if List.member letter [ 'J', 'X' ] then
        8
    else if List.member letter [ 'Q', 'Z' ] then
        10
    else
        0


scoreWord : String -> Int
scoreWord word =
    word
        |> String.toUpper
        |> String.toList
        |> List.map getPointValue
        |> List.sum
