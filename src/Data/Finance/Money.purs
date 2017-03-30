module Data.Finance.Money
  ( Discrete(..)
  , formatDiscrete
  , showDiscrete
  ) where

import Data.Finance.Currency (kind Currency, class Currency, CProxy(..))
import Data.Finance.Currency as Currency
import Data.Finance.Money.Format (Format, FormatF(..), absolute, ifNegative, literal)
import Data.Foldable (foldMap)
import Data.Generic (class Generic, gShow)
import Data.Int as Int
import Data.Module (class LeftModule, class RightModule)
import Data.Newtype (class Newtype)
import Data.Ord (abs)
import Global.Unsafe (unsafeToFixed)
import Math (pow)
import Prelude

-- | An amount of money in the smallest discrete unit of a particular currency.
-- | For example, `wrap 256 :: Discrete GBP` would represent £2.56, whereas
-- | `wrap 256 :: Discrete JPY` would represent ¥256. If you want to work with
-- | higher granularity, you can define your own currency type.
newtype Discrete (c :: Currency) = Discrete Int
derive newtype instance eqDiscrete  :: Eq (Discrete c)
derive newtype instance ordDiscrete :: Ord (Discrete c)
derive instance genericDiscrete     :: Generic (Discrete c)
derive instance newtypeDiscrete     :: Newtype (Discrete c) _
instance showDiscreteInstance :: Show (Discrete c) where show = gShow

instance leftModuleDiscrete :: LeftModule (Discrete c) Int where
  mzeroL = Discrete 0
  maddL (Discrete a) (Discrete b) = Discrete (a + b)
  msubL (Discrete a) (Discrete b) = Discrete (a - b)
  mmulL a            (Discrete b) = Discrete (a * b)

instance rightModuleDiscrete :: RightModule (Discrete c) Int where
  mzeroR = Discrete 0
  maddR (Discrete a) (Discrete b) = Discrete (a + b)
  msubR (Discrete a) (Discrete b) = Discrete (a - b)
  mmulR (Discrete a) b            = Discrete (a * b)

-- | Apply a format to a discrete amount.
formatDiscrete :: ∀ c. Currency c => Format -> Discrete c -> String
formatDiscrete f (Discrete n) = foldMap go f
  where
  go (IfNegative s) = if n < 0 then foldMap go s else ""
  go (Literal s)    = s
  go CurrencyCode   = Currency.code (CProxy :: CProxy c)
  go Absolute       =
    unsafeToFixed d (n' / pow 10.0 (Int.toNumber d))
    where
    n' = abs $ Int.toNumber n
    d = Currency.decimals (CProxy :: CProxy c)

-- | DEPRECATED: use `formatDiscrete` instead.
-- |
-- | Show the discrete value with the correct number of decimals. Will not
-- | prepend the currency sign. Negative amounts are prefixed with a
-- | hyphen-minus.
-- |
-- | Examples:
-- |
-- |  - `showDiscrete (Discrete   256  :: Discrete GBP) ==  "2.56"`
-- |  - `showDiscrete (Discrete (-256) :: Discrete GBP) == "-2.56"`
showDiscrete :: ∀ c. Currency c => Discrete c -> String
showDiscrete = formatDiscrete $ ifNegative (literal "-") <> absolute
