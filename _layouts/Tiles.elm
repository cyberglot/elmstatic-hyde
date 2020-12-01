module Tiles exposing (html)

import Bulma.Layout
    exposing
        ( tile
        , tileAncestor
        , tileChild
        , tileParent
        , verticalTile
        , verticalTileParent
        )
import Bulma.Modifiers exposing (..)
import Html exposing (Attribute, Html, div, img, p, text)
import Html.Attributes as Attr exposing (class, src)
import Styles exposing (spacels)
import Svg
import Svg.Attributes as SvgAttr


html : String -> String -> String -> String -> String -> List ( String, String ) -> Html Never
html titl link desc copyright version lnks =
    tileAncestor Auto
        []
        [ verticalTile Width6
            []
            [ tile Auto
                [ spacels [ "tile" ] ]
                [ img [ src "images/cyberglot.svg" ] []
                ]
            , tileParent Auto
                []
                [ tileChild Auto
                    [ spacels [ "tile" ] ]
                    [ text "I'm taking up the bottom-left half of the grid!"
                    ]
                ]
            ]
        , tileParent Auto
            []
            [ tileChild Width4
                [ spacels [ "tile", "card" ] ]
                [ text "I'm a tall column taking up the entire right edge!"
                ]
            ]
        ]
