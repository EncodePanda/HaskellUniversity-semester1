module Program2
    ( mainIO
    ) where

mainIO :: IO ()
mainIO = do
  putStrLn "Hello, what is your name?"
  name <- getLine
  putStrLn $ "Nice to meet you " ++ name
