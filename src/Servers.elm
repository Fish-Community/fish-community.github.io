module Servers exposing (main)

import Browser
import Config
import Html exposing (Html, div, text)
import Html.Attributes exposing (class, id)


type Msg
    = None


main : Program () () Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : flags -> ( (), Cmd Msg )
init _ =
    ( (), Cmd.none )


view : () -> Html Msg
view _ =
    div [ id "servers" ] <| List.map serverDiv Config.servers


serverDiv : Config.Server -> Html Msg
serverDiv server =
    div [ class "server" ] [ text server.name ]


update : Msg -> () -> ( (), Cmd Msg )
update _ _ =
    ( (), Cmd.none )


subscriptions : () -> Sub Msg
subscriptions _ =
    Sub.none
