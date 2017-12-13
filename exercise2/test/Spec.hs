module Main where

import Test.Hspec
import Test.QuickCheck
import QuickSortInt

main :: IO ()
main = hspec $ do
  describe "QuickSortInt" $ do
    it "sort [3, 10, 1, 5, 2, 4, 5, 0] to [0, 1, 2, 3, 4, 5, 5, 10]" $ do
      qs [3, 10, 1, 5, 2, 4, 5, 0] `shouldBe` [0, 1, 2, 3, 4, 5, 5, 10]
