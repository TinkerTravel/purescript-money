module Data.Finance.Money.Format
  ( Format
  , FormatF(..)
  , ifNegative
  , literal
  , currencyCode
  , absolute

  , sbind

  , numeric
  , numericC
  , accountant
  , accountantC
  ) where

import Data.List (List)
import Prelude

--------------------------------------------------------------------------------

-- | Format specification for amounts.
type Format = List FormatF

-- | Part of a format specification for amounts.
data FormatF
  = IfNegative Format
  | Literal String
  | CurrencyCode
  | Absolute

-- | Perform a format only if the amount is negative.
ifNegative :: Format -> Format
ifNegative = pure <<< IfNegative

-- | Insert a literal string.
literal :: String -> Format
literal = pure <<< Literal

-- | Insert the currency code.
currencyCode :: Format
currencyCode = pure CurrencyCode

-- | Insert the absolute value of the amount in decimal.
absolute :: Format
absolute = pure Absolute

--------------------------------------------------------------------------------

-- | Utility function so you can define formats with do notation. For example:
-- |
-- | ```purescript
-- | myFormat = do
-- |   ifNegative $ literal "("
-- |   currencyCode
-- |   literal space
-- |   amount
-- |   ifNegative $ literal ")"
-- |   where bind = sbind
-- | ```
sbind :: ∀ a. Semigroup a => a -> (Unit -> a) -> a
sbind = flip $ flip append <<< (_ $ unit)

--------------------------------------------------------------------------------

-- | Numeric format, with a minus sign for negative amounts, and no currency
-- | indicator.
numeric :: Format
numeric = ifNegative (literal minus) <> absolute

-- | Numeric format, with a minus sign for negative amounts, and a currency
-- | code.
numericC :: Format
numericC = do
  ifNegative $ literal minus
  currencyCode
  literal space
  absolute
  where bind = sbind

-- | Accountant format, with negative amounts parenthesized, and no currency
-- | code.
accountant :: Format
accountant = do
  ifNegative $ literal "("
  absolute
  ifNegative $ literal ")"
  where bind = sbind

-- | Accountant format, with negative amounts parenthesized, and a currency
-- | code.
accountantC :: Format
accountantC = do
  ifNegative $ literal "("
  currencyCode
  literal space
  absolute
  ifNegative $ literal ")"
  where bind = sbind

--------------------------------------------------------------------------------

minus :: String
minus = "\x2212"

space :: String
space = " "
