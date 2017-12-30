module QuickSortInt where

qs :: [Int] -> [Int]
qs [] = []
qs (el:tail) = qs (smaller el tail) ++ [el] ++ qs (bigger el tail)
  where
    smaller x xs = filter (<= x) xs
    bigger  x xs = filter (> x) xs
