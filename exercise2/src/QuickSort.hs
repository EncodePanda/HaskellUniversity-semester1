module QuickSort
    ( qs
    , mainIO
    ) where

import System.Environment (getArgs)

qs :: Ord a => [a] -> [a]
qs [] = []
qs (el:tail) = qs (smaller el tail) ++ [el] ++ qs (bigger el tail)
  where
    smaller x xs = filter (<= x) xs
    bigger  x xs = filter (> x) xs

mainIO :: IO ()
mainIO = do
  args <- getArgs
  putStrLn $ show (qs args)
  return ()
