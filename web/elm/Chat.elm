module Chat where

-- core libraries
import Signal exposing (Address, Mailbox, mailbox)
import Task exposing (Task)

-- community packages
import Html exposing (Html, text)
import Html.Attributes
import Html.Events
import Effects exposing (Effects, Never)


-- magic
import StartApp

main : Signal Html
main =
  app.html

app =
  StartApp.start
          { init = init
          , update = update
          , view = view
          , inputs = []
          }

port tasks : Signal (Task Never ())
port tasks =
  app.tasks

-- MODEL
type alias Model =
  { userName : String
  , chat2send : String
  , chatData : List Chat
  }

type alias Chat =
  { user : String
  , msg : String
  }

-- UPDATE
init : (Model, Effects Action)
init =
  let
    model =
      { userName = "yurnaim"
      , chat2send = "hello"
      , chatData = []
      }
  in
    (model, Effects.none)

type Action = NoOp
            
update : Action -> Model -> (Model, Effects Action)
update action model =
  case action of
    NoOp -> (model, Effects.none)

-- VIEW

view : Address Action -> Model -> Html
view address model = text "Hello there Phoenix! Really."
