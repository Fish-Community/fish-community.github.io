module Main exposing (main)

import Browser
import Html exposing (Html, h1, text)


type alias Model =
    { message : String
    }


type Msg
    = None


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : flags -> ( Model, Cmd Msg )
init _ =
    ( { message = "Hello World!"
      }
    , Cmd.none
    )


view : Model -> Html Msg
view model =
    h1 [] [ text model.message ]


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
