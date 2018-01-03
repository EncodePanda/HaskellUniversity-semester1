module Scenario2Spec where

import Test.Hspec
import Test.QuickCheck
import Items
import Scenario2

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "sth" $ do
  it "[Apple, Apple, Apple, Apple] is 1.2" $ do
    checkoutItems [Apple, Apple, Apple, Apple] `shouldBe` 1.2

  it "[Apple] is 0.6" $ do
    checkoutItems [Apple] `shouldBe` 0.6

  it "[Apple, Apple, Apple] is 1.2" $ do
    checkoutItems [Apple, Apple, Apple] `shouldBe` 1.2

  it "[Orange] is 0.25" $ do
    checkoutItems [Orange] `shouldBe` 0.25

  it "[Orange, Orange] is 0.5" $ do
    checkoutItems [Orange, Orange] `shouldBe` 0.5

  it "[Orange, Orange, Orange] is 0.5" $ do
    checkoutItems [Orange, Orange, Orange] `shouldBe` 0.5

  it "[Orange, Orange, Orange, Orange] is 0.75" $ do
    checkoutItems [Orange, Orange, Orange, Orange] `shouldBe` 0.75

  it "[Orange, Orange, Orange, Orange, Orange, Orange, Orange] is 1.25" $ do
    checkoutItems [Orange, Orange, Orange, Orange, Orange, Orange, Orange] `shouldBe` 1.25

