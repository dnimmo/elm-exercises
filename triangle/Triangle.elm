module Triangle exposing (..)


version : Int
version =
    2


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


violatesInequality : Float -> Float -> Float -> Bool
violatesInequality x y z =
    x + y < z || x + z < y || y + z < x


numberOfEqualSides : Float -> Float -> Float -> Int
numberOfEqualSides x y z =
    let
        matchingPairs =
            List.length (List.filter (\x -> x == True) [ x == y, x == z, y == z ])
    in
        if matchingPairs == 3 then
            3
        else if matchingPairs == 1 then
            2
        else
            0


identifyTriangleType x y z =
    case numberOfEqualSides x y z of
        3 ->
            Equilateral

        2 ->
            Isosceles

        _ ->
            Scalene


triangleKind : Float -> Float -> Float -> Result String Triangle
triangleKind x y z =
    let
        anyValueIsLessThanZero =
            List.any not (List.map (\x -> x > 0) [ x, y, z ])

        inequalityError =
            violatesInequality x y z
    in
        if anyValueIsLessThanZero then
            Err "Invalid lengths"
        else if inequalityError then
            Err "Violates inequality"
        else
            Ok (identifyTriangleType x y z)
