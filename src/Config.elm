module Config exposing (Server, main, servers)

import Html


type alias Server =
    { color : String
    , location : String
    , name : String
    }



-- The list of servers


servers : List Server
servers =
    [ { color = "cyan"
      , location = "162.248.101.95"
      , name = "Survival"
      }
    ]


main : Html.Html msg
main =
    Html.text "Don't use this module to render HTML."
