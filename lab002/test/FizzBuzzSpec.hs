module FizzBuzzSpec where

import Test.Hspec
import Test.QuickCheck
import FizzBuzz


main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "FizzBuzz" $ do
  it "generated list is of size n" $ do
    property (\n -> n <= 0 || (length $ fizzbuzz n) == n)
