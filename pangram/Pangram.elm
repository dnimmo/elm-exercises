module Pangram exposing (isPangram)


alphabet : List String
alphabet =
    (String.split "" "abcdefghijklmnopqrstuvwxyz")


isPangram : String -> Bool
isPangram sentence =
    let
        sentenceInLowerCase =
            String.toLower sentence

        lettersFound =
            alphabet
                |> List.all (\letter -> String.contains letter sentenceInLowerCase)
    in
        lettersFound
