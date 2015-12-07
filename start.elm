import Html exposing (..)
import Html.Attributes exposing (..)
import Mouse

hello = 
   div [] [text  "Hello"]

logo (w,h) = 
    img [src "http://elm-lang.org/imgs/yogi.jpg"
         , style 
           [("width", toString w ++ "px"), 
           ("height", toString h ++ "px")
           ]      
         ] 
         []


width  =  Signal.foldp (\click count ->  count + 1) 0 Mouse.clicks

main = 
    Signal.map logo Mouse.position
