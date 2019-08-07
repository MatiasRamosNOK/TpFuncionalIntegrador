module Components.Search exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Msg exposing (..)

search : Html Msg
search =
  div [ class "search-container" ] [
    input [ class "search-input"
          , placeholder "Search..."
          , onInput Filter
          , autofocus True ] []
  ]