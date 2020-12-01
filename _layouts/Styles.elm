module Styles exposing (spacels, styles)

import Css exposing (..)
import Css.Global exposing (..)
import Css.Media as Media exposing (..)
import Html exposing (Html)
import Html.Attributes exposing (classList)
import Html.Styled
import List as List


pink =
    hex "F992FF"


space : String -> String
space x =
    "space-" ++ x


spacecl x =
    class <| space x


spacels x =
    classList (List.map (\y -> ( space y, True )) x)


styles : Html msg
styles =
    global
        [ spacecl "tile"
            [ padding <| rem 2
            ]
        , spacecl "card"
            [ backgroundColor pink
            , borderRadius <| rem 0.5
            ]
        ]
        |> Html.Styled.toUnstyled
