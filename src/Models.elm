module Models exposing (Model)

import Browser.Navigation as Nav
import Url

import Types exposing (Song)

type alias Model = {
  songs: List Song, -- songs from db.json
  queue: List Song, -- songs in queue
  playerUrl: String, -- url of current song
  onlyLiked: Bool, -- show onlyLiked/all
  filterText: String,
  playing: Maybe Bool,
  -- playing state
  --  | Just True -> is playing
  --  | Just False -> is paused
  --  | Nothing -> stop
  key: Nav.Key, -- navigation
  url: Url.Url -- navigation
 }