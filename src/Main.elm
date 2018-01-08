module Main exposing (..)

import Svg exposing (..)
import Svg.Attributes exposing (..)
import Html


main : Html.Html msg
main =
    svg
        [ version "1.1"
        , x "0"
        , y "0"
        , viewBox "-30 -30 383.141 382.95"
        ]
        paths


paths : List (Svg msg)
paths =
    [ elmBackground, edges, nodes ]


nodes : Svg msg
nodes =
    Svg.g []
        [ node 323.298 0 "#60B5CC"
        , node 0 0 "#7FD13B"
        , node 0 323.298 "#5A6378"
        , node 323.298 323.298 "#F0AD00"
        , node 323.298 161.649 "#FFF"
        , node 246 246 "#E535AB"
        ]


node : Float -> Float -> String -> Svg msg
node cx cy fillColor =
    Svg.circle
        [ Svg.Attributes.cx (toString cx)
        , Svg.Attributes.cy (toString cy)
        , r (toString 15)
        , stroke "black"
        , strokeWidth "7"
        , fill fillColor
        ]
        []


edges : Svg msg
edges =
    Svg.path
        [ d "M 323.298 0 h -323.298 v 323.298 h 323.298 v -153.649 L 246 247"
        , stroke "black"
        , strokeWidth "10"
        , fill "none"
        ]
        []


elmBackground : Svg msg
elmBackground =
    Svg.g []
        [ polygon [ fill "#eee", points "161.649,152.782 231.514,82.916 91.783,82.916" ] []
        , polygon [ fill "#eee", points "8.867,0 79.241,70.375 232.213,70.375 161.838,0" ] []
        , rect
            [ fill "#eee"
            , x "192.99"
            , y "107.392"
            , width "107.676"
            , height "108.167"
            , transform "matrix(0.7071 0.7071 -0.7071 0.7071 186.4727 -127.2386)"
            ]
            []
        , polygon [ fill "#eee", points "323.298,143.724 323.298,0 179.573,0" ] []
        , polygon [ fill "#eee", points "152.781,161.649 0,8.868 0,314.432" ] []
        , polygon [ fill "#eee", points "255.522,246.655 323.298,314.432 323.298,178.879" ] []
        , polygon [ fill "#eee", points "161.649,170.517 8.869,323.298 314.43,323.298" ] []
        ]
