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
import Html exposing (Attribute, Html, div, h1, h2, img, p, text)
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
            ]
        , verticalTile Width1 [] []
        , verticalTile Width3
            []
            [ tileChild Auto
                [ spacels [ "tile", "card", "highlight" ] ]
                [ img [ src "images/cyberglot.jpg" ] []
                , p [] [ text "that's me !" ]
                ]
            , tileChild Auto
                [ spacels [ "tile", "card" ] ]
                [ h1 [] [ text "Compiler Engineer @ Metastate" ]
                , h2 [] [ text "PhD Candidate in Computer Science" ]
                -- , h2 [] [ text "Specialised in Programming Language design, effect systems and usability of theorem provers." ]
                ]
            ]
        ]
