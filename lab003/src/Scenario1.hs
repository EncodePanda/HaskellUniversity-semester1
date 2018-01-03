module Scenario1 (checkoutItems) where

import ShoppingCart
import Items

data Scanned = Scanned {getTotal:: Double}

instance Monoid Scanned where
  mempty = Scanned 0.0
  mappend (Scanned t1) (Scanned t2) = Scanned (t1 + t2)

checkoutItems :: [Item] -> Double
checkoutItems items = checkout (map scan items) getTotal
  where
    scan:: Item -> Scanned
    scan item = Scanned (price item)

