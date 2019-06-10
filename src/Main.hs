module Main where

import           Data.Char (toLower)
import           Hangman   (freshPuzzle, randomWord', runGame)
import           System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  word <- randomWord'
  let puzzle = freshPuzzle (fmap toLower word)
  runGame puzzle
