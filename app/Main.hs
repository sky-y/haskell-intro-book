module Main where

import Control.Monad.Trans.Reader (Reader, ask, runReader)

-- import Game

main :: IO ()
main = print $ runReader realRound 1.5013232

realRound :: Reader Double Int
realRound = do
    x <- ask
    return $ round x
