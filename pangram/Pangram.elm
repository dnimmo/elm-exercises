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
            List.all (\letter -> String.contains letter sentenceInLowerCase) alphabet
    in
        lettersFound
