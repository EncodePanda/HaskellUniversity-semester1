module QuickSortSpec(main, spec) where

import Data.List
import Test.Hspec
import Test.QuickCheck
import QuickSort

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "QuickSortInt" $ do
    it "original and sorted should hold exact same elements" $ do
      property (\xs -> sameElements (xs::[String]) (qs xs)) .&&.
               (\xs -> sameElements (xs::[Int]) (qs xs))    .&&.
               (\xs -> sameElements (xs::String) (qs xs))   .&&.
               (\xs -> sameElements (xs::[Double]) (qs xs))   

    it "after qs elements are sorted" $ do
      property (\xs -> sorted $ qs (xs::[String])) .&&.
               (\xs -> sorted $ qs (xs::[Int]))    .&&.
               (\xs -> sorted $ qs (xs::String))   .&&.
               (\xs -> sorted $ qs (xs::[Double]))

-- properties
sorted :: Ord a => [a] -> Bool
sorted [] = True
sorted [a1] = True
sorted (a1:a2:xs) = (a1 <= a2) && (sorted xs)

sameElements :: Ord a => [a]-> [a] -> Bool
sameElements xs ys = null (xs \\ ys) && null (ys \\ xs)
  
