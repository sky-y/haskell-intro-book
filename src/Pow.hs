-- p.186 5.5
module Pow where
import Control.Monad.Trans.Reader (Reader, runReader, asks, local)

data PowerEnv = PowerEnv {   powEnergy    :: !Double
                            ,poweSaveMode :: !Bool
                         }

consume :: Reader PowerEnv Double
consume = do
    energy   <- asks powEnergy
    savemode <- asks poweSaveMode
    let consumption = if savemode then energy / 10.0
                                  else energy
    return consumption
