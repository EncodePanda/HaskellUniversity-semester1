module ShoppingCart where

import Data.Foldable

checkout :: (Foldable f, Monoid a, Num n) => f a -> (a -> n) -> n
checkout elems wrap = wrap $ fold elems
