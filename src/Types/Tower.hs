{-# LANGUAGE DeriveGeneric #-}

module Types.Tower where

import Data.Aeson
import GHC.Generics

data Color = Black | White
  deriving (Eq, Enum, Show, Read, Generic)

instance FromJSON Color
instance ToJSON Color

data Draught = Draught { color :: Color }
  deriving (Eq, Show, Read, Generic)

instance FromJSON Draught
instance ToJSON Draught

data Tower = Tower { stack :: [Draught] }
  deriving (Eq, Show, Read, Generic)

instance FromJSON Tower
instance ToJSON Tower
