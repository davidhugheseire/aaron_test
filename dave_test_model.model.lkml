connection: "dave_big_query"

include: "/views/offaly_weather.view.lkml"                # include all views in the views/ folder in this project


explore: offaly_weather {}
