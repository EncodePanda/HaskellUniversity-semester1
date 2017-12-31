module FizzBuzz(fizzbuzz) where

import Data.List

fizzbuzz :: Int -> [String]
fizzbuzz n = take n (zipWith pick fizzbuzzes numbers)
  where
    numbers = map show [1..]
    fizzes  = cycle ["", "", "Fizz"]
    buzzes  = cycle ["", "", "", "", "Buzz"]
    fizzbuzzes = zipWith (++) fizzes buzzes

    pick :: String -> String -> String
    pick "" n = n
    pick w _  = w
