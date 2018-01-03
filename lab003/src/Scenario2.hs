module Scenario2 (checkoutItems) where

import ShoppingCart
import Items

data Scanned = Scanned {scannedApples:: Int, scannedOranges:: Int}

instance Monoid Scanned where
  mempty = Scanned 0 0
  mappend (Scanned sa1 so1) (Scanned sa2 so2) = Scanned (sa1 + sa2) (so1 + so2)

checkoutItems :: [Item] -> Double
checkoutItems items = checkout (map scan items) getTotal
  where
    scan:: Item -> Scanned
    scan Apple = Scanned 1 0
    scan Orange = Scanned 0 1

getTotal:: Scanned -> Double
getTotal (Scanned apples oranges) = sumApples apples + sumOranges oranges
  where
    sumApples:: Int -> Double
    sumApples n =  applePrice * fromIntegral (n `div` 2 + n `mod` 2)

    sumOranges:: Int -> Double
    sumOranges n = orangePrice * ((fromIntegral (n `div` 3) * 2) + fromIntegral (n `mod` 3))

