module Test.Main
  ( main
  ) where

import Test.Data.Finance.Money as Data.Finance.Money
import Test.Unit.Main (runTest)

main = runTest do
  Data.Finance.Money.main
