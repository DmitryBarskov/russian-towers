{-# LANGUAGE DeriveGeneric #-}

module Types.Game where

import Data.Aeson
import GHC.Generics

import Types.Tower

type Cell = Maybe Tower

type Board = [[Cell]]

data GameState = GameState { board :: Board, move :: Color }
  deriving (Eq, Show, Read, Generic)

instance FromJSON GameState
instance ToJSON GameState
