module QuickSortIntSpec(main, spec) where

import Test.Hspec
import Test.QuickCheck
import QuickSortInt

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "QuickSortInt" $ do
    -- simple example of unit tests using Hspec
    it "qs [3, 10, 1, 5, 2, 4, 5, 0] == [0, 1, 2, 3, 4, 5, 5, 10]" $ do
      qs [3, 10, 1, 5, 2, 4, 5, 0] `shouldBe` [0, 1, 2, 3, 4, 5, 5, 10]

    -- checking for idempotency is a trivial property test
    it "sorting should be idempotent" $ do
      property $ \xs -> qs (qs xs) == qs xs

    -- the only property test that we really need
    it "after qs elements are sorted" $ property (sorted . qs)

-- properties
sorted :: [Int] -> Bool
sorted [] = True
sorted [a] = True
sorted (a:b:xs) = (a <= b) && (sorted xs)
