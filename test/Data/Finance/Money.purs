module Test.Data.Finance.Money
  ( main
  ) where

import Data.Finance.Currency (GBP, JPY)
import Data.Finance.Money (Dense(..), Discrete(..), Rounding(..), fromDense, fromDiscrete, formatDense, formatDiscrete)
import Data.Finance.Money.Format (numeric)
import Data.Rational ((%))
import Prelude
import Test.Unit (suite, test)
import Test.Unit.Assert as Assert

type IGBP = Discrete GBP
type IJPY = Discrete JPY

type EGBP = Dense GBP
type EJPY = Dense JPY

main = suite "Date.Finance.Money" do
  test "formatDiscrete" do
    let gbp s n = Assert.equal s $ formatDiscrete numeric (Discrete n :: IGBP)
    let jpy s n = Assert.equal s $ formatDiscrete numeric (Discrete n :: IJPY)

    gbp         "0.00" 0
    gbp         "2.56" 256
    gbp        "−2.56" (-256)
    gbp  "21474836.47" top
    gbp "−21474836.48" bottom

    jpy           "0" 0
    jpy         "256" 256
    jpy        "−256" (-256)
    jpy  "2147483647" top
    jpy "−2147483648" bottom

  test "formatDense" do
    let gbp s n = Assert.equal s $ formatDense Nearest numeric (Dense n :: EGBP)
    let jpy s n = Assert.equal s $ formatDense Nearest numeric (Dense n :: EJPY)

    gbp  "0.00" (0 % 1)
    gbp  "2.56" (256 % 100)
    gbp "−2.56" ((-256) % 100)

    jpy  "0" (0 % 1)
    jpy  "3" (256 % 100)
    jpy "−3" ((-256) % 100)

  test "fromDiscrete" do
    Assert.equal (Dense $  1 % 2) (fromDiscrete $ Discrete 50 :: IGBP)
    Assert.equal (Dense $ 50 % 1) (fromDiscrete $ Discrete 50 :: IJPY)

  test "fromDense" do
    Assert.equal (Discrete   34  :: IGBP) (fromDense Up       <<< Dense $ 1 % 3)
    Assert.equal (Discrete   33  :: IGBP) (fromDense Down     <<< Dense $ 1 % 3)
    Assert.equal (Discrete   33  :: IGBP) (fromDense ToZero   <<< Dense $ 1 % 3)
    Assert.equal (Discrete   34  :: IGBP) (fromDense FromZero <<< Dense $ 1 % 3)
    Assert.equal (Discrete (-33) :: IGBP) (fromDense ToZero   <<< Dense $ (-1) % 3)
    Assert.equal (Discrete (-34) :: IGBP) (fromDense FromZero <<< Dense $ (-1) % 3)
    Assert.equal (Discrete   33  :: IGBP) (fromDense Nearest  <<< Dense $ 1 % 3)
    Assert.equal (Discrete (-33) :: IGBP) (fromDense Nearest  <<< Dense $ (-1) % 3)

    Assert.equal (Discrete   1  :: IJPY) (fromDense Up       <<< Dense $ 1 % 3)
    Assert.equal (Discrete   0  :: IJPY) (fromDense Down     <<< Dense $ 1 % 3)
    Assert.equal (Discrete   0  :: IJPY) (fromDense ToZero   <<< Dense $ 1 % 3)
    Assert.equal (Discrete   1  :: IJPY) (fromDense FromZero <<< Dense $ 1 % 3)
    Assert.equal (Discrete (-0) :: IJPY) (fromDense ToZero   <<< Dense $ (-1) % 3)
    Assert.equal (Discrete (-1) :: IJPY) (fromDense FromZero <<< Dense $ (-1) % 3)
    Assert.equal (Discrete   0  :: IJPY) (fromDense Nearest  <<< Dense $ 1 % 3)
    Assert.equal (Discrete (-0) :: IJPY) (fromDense Nearest  <<< Dense $ (-1) % 3)
