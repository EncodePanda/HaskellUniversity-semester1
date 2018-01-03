module Items where

data Item = Apple | Orange

applePrice = 0.6
orangePrice = 0.25

price :: Item -> Double
price Apple = applePrice
price Orange = orangePrice

