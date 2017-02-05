module Raindrops exposing (..)

import String exposing (..)
import List exposing (..)


insertString : Int -> Int -> String -> String
insertString num numToCheck stringToInsert =
    if num % numToCheck == 0 then
        stringToInsert
    else
        ""


raindrops : Int -> String
raindrops num =
    let
        returnString =
            String.concat <|
                List.map (\( str, int ) -> insertString num int str) <|
                    [ ( "Pling", 3 ), ( "Plang", 5 ), ( "Plong", 7 ) ]
    in
        if String.isEmpty returnString then
            toString num
        else
            returnString
