module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Events exposing (..)


type alias Model =
    {}


type Msg
    = NoOp


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [] []


init : () -> ( Model, Cmd Msg )
init _ =
    let
        initModel =
            {}
    in
    ( initModel, Cmd.none )


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
