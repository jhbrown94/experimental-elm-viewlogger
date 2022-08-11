module Main exposing (..)

import Browser
import Html
import Html.Attributes as Attr
import Html.Events as Events
import Json.Encode as Encode
import ViewLogger


type alias Model =
    Int


type Msg
    = Clicked


view model =
    { title = "Hello world"
    , body =
        [ Html.text "Hello world"
        , Html.br [] []
        , Html.text "Second line"
        , Html.br [] []
        , Html.input [ Attr.type_ "button", Attr.value "Click me", Events.onClick Clicked ] []
        , ViewLogger.log
            { url = "http://localhost:9999/log"
            , data = Encode.int model
            }
        ]
    }


main =
    Browser.document
        { init = init
        , update = \_ model -> ( model + 1, Cmd.none )
        , view = view
        , subscriptions = \_ -> Sub.none
        }


init : () -> ( Model, Cmd Msg )
init flags =
    ( 0, Cmd.none )
