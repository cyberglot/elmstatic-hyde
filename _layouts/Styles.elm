module Styles exposing (spacels, styles)

import Css exposing (..)
import Css.Global exposing (..)
import Css.Media as Media exposing (..)
import Html exposing (Html)
import Html.Attributes exposing (classList)
import Html.Styled
import List as List


white =
    hex "FFFCFE"


purple =
    hex "241E2F"


pink =
    hex "FF98BA"


lavander =
    hex "E6E6FA"


indigo =
    hex "9457eb"


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
        [ body
            [ margin (px 100)
            , backgroundColor white
            , Css.color purple
            ]
        , h1 [ fontSize (rem 2)
             , lineHeight (rem 1.8)
             , marginBottom (rem 1.5)
             ]
        , h2 [ fontSize (rem 1.3)
             , lineHeight (rem 1.5)
             ]
        , spacecl "tile"
            [ padding <| rem 2
            ]
        , spacecl "card"
            [ backgroundColor pink
            , display block
            , padding <| px 15
            , border3 (px 3) solid purple
            ]
        ]
        |> Html.Styled.toUnstyled
