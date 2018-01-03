module Scenario1Spec where

import Test.Hspec
import Test.QuickCheck
import Items
import Scenario1

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "sth" $ do
  it "[Apple, Apple, Orange, Apple] is 2.05" $ do
    checkoutItems [Apple, Apple, Orange, Apple] `shouldBe` 2.05

