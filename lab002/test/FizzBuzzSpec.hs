module FizzBuzzSpec where


import Data.Maybe
import Text.Read

import Test.Hspec
import Test.QuickCheck
import FizzBuzz


main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "FizzBuzz" $ do
  it "generated list is of size n bla" $ do
    property (\(Positive n) -> (length $ fizzbuzz n) == n)

  it "has only numbers or Fizz or Buzz" $ do
    property (\(Positive n) -> null $ filter (not . allowed) (fizzbuzz n))


allowed :: String -> Bool
allowed "Fizz" = True
allowed "Buzz" = True
allowed str = isJust ((readMaybe str)::(Maybe Int))
