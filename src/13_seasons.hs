
data Season = Winter | Spring | Summer | Fall deriving (Show)
data Temperature = Cold | Warm | Hot | Chilly deriving (Show)
data ThisOrThat = This Temperature | That Season deriving (Show)

myFavoriteSeason  :: Season
myFavoriteSeason  = Winter

-- Case / TypetoType
oppositeSeason :: Season -> Season
oppositeSeason x
  = case x of
      Winter -> Summer
      Spring -> Fall
      Summer -> Winter
      Fall -> Spring

-- Type to String
seasonToTemperature :: Season -> String
seasonToTemperature x
  = case x of
    Winter -> "cold"
    Spring -> "warm"
    Summer -> "hot"
    Fall -> "chilly"

-- Type to Different Type
temperatureToSeason :: Temperature -> Season
temperatureToSeason x
  = case x of
    Warm -> Spring
    Hot -> Summer
    Chilly -> Fall
    Cold -> Winter

-- Maybe
stringToTemperature :: String -> Maybe Temperature
stringToTemperature x
  = case x of
    "cold" -> Just Cold
    "warm" -> Just Warm
    "hot" -> Just Hot
    "chilly" -> Just Chilly
    _ -> Nothing

-- Either
eitherRhyme :: Either Temperature Season -> String 
eitherRhyme x
  = case x of
    Left Cold -> "old"
    Left Warm -> "storm"
    Left Hot -> "pot"
    Left Chilly -> "lily"
    Right Winter -> "spinchter"
    Right Spring -> "bring"
    Right Summer -> "bummer"
    Right Fall -> "ball"

-- Ismorphism
fromEither :: Either Temperature Season -> ThisOrThat
fromEither x   
  = case x of 
    Left t -> This t  
    Right s -> That s

toEither :: ThisOrThat -> Either Temperature Season
toEither x
  = case x of
    This t -> Left t
    That s -> Right s