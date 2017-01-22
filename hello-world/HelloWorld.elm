module HelloWorld exposing (..)


helloWorld : Maybe String -> String
helloWorld name =
    case name of
        Just value ->
            "Hello, " ++ value ++ "!"

        Nothing ->
            "Hello, World!"
