module ViewLogger exposing (log)

import Html
import Html.Attributes as Attr
import Json.Encode as Encode


log : { url : String, data : Encode.Value } -> Html.Html msg
log { url, data } =
    Html.node "view-logger"
        [ Attr.attribute "url" url
        , Attr.attribute "data" (Encode.encode 0 data)
        , Attr.hidden True
        ]
        [ Html.text "inside logger" ]
