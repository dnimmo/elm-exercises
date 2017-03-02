module Anagram exposing (..)


areAnagrams : String -> String -> Bool
areAnagrams word1 word2 =
    sortAlphabetically word1 == sortAlphabetically word2


areSameWord : String -> String -> Bool
areSameWord word1 word2 =
    String.toLower word1 == String.toLower word2


sortAlphabetically : String -> String
sortAlphabetically wordToSort =
    wordToSort
        |> String.toLower
        |> String.toList
        |> List.sort
        |> String.fromList


detect : String -> List String -> List String
detect wordToMatch potentialMatches =
    let
        anagrams =
            potentialMatches
                |> List.filter (\word -> areAnagrams word wordToMatch)

        anagramsWithoutOriginalWord =
            anagrams
                |> List.filter (\word -> not (areSameWord word wordToMatch))
    in
        anagramsWithoutOriginalWord
