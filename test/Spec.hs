import           Hangman
import           Test.Hspec

defaultPuzzle :: Puzzle
defaultPuzzle = freshPuzzle "test"

expectedPuzzle :: Puzzle
expectedPuzzle = Puzzle "test" [Just 't', Nothing, Nothing, Just 't'] "t"

main :: IO ()
main =
  hspec $ do
    describe "Hangman Testing" $ do
      it "fillInCharacter should work" $
        fillInCharacter defaultPuzzle 't' `shouldBe` expectedPuzzle
      it "handleGuess should work" $
        handleGuess defaultPuzzle 't' `shouldReturn` expectedPuzzle
