module Test.Data.Finance.Money
  ( main
  ) where

import Data.Finance.Currency (GBP, JPY)
import Data.Finance.Money (Discrete(..), showDiscrete)
import Prelude
import Test.Unit (suite, test)
import Test.Unit.Assert as Assert

main = suite "Date.Finance.Money" do
  test "showDiscrete" do
    let gbp s n = Assert.equal s $ showDiscrete (Discrete n :: Discrete GBP)
    let jpy s n = Assert.equal s $ showDiscrete (Discrete n :: Discrete JPY)

    gbp         "0.00" 0
    gbp         "2.56" 256
    gbp        "-2.56" (-256)
    gbp  "21474836.47" top
    gbp "-21474836.48" bottom

    jpy           "0" 0
    jpy         "256" 256
    jpy        "-256" (-256)
    jpy  "2147483647" top
    jpy "-2147483648" bottom
