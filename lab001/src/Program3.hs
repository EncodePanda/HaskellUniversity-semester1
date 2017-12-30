module Program3
    ( mainIO
    ) where

import qualified Program2 as P2
import Control.Monad (forever)

mainIO :: IO ()
mainIO = forever P2.mainIO
