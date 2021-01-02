data Season = Winter | Spring | Summer | Fall deriving (Show)
data Temperature = Cold | Warm | Hot | Chilly deriving (Show)

myFavoriteSeason  :: Season
myFavoriteSeason  = Winter

oppositeSeason :: Season -> Season
oppositeSeason x
  = case x of
      Winter -> Summer
      Spring -> Fall
      Summer -> Winter
      Fall -> Spring

seasonToTemperature :: Season -> String
seasonToTemperature x
  = case x of
    Winter -> "cold"
    Spring -> "warm"
    Summer -> "hot"
    Fall -> "chilly"

temperatureToSeason :: Temperature -> Season
temperatureToSeason x
  = case x of
    Warm -> Spring
    Hot -> Summer
    Chilly -> Fall
    Cold -> Winter

stringToTemperature :: String -> Maybe Temperature
stringToTemperature x
  = case x of
    "cold" -> Just Cold
    "warm" -> Just Warm
    "hot" -> Just Hot
    "chilly" -> Just Chilly
    _ -> Nothing
    