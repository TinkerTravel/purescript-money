module Data.Finance.Money
  ( Discrete(..)
  , formatDiscrete
  , showDiscrete

  , Dense(..)
  , formatDense

  , Rounding(..)
  , fromDiscrete
  , fromDense
  ) where

import Data.Finance.Currency (CurrencyK, class Currency, CProxy(..))
import Data.Finance.Currency as Currency
import Data.Finance.Money.Format (Format, FormatF(..), absolute, ifNegative, literal)
import Data.Foldable (foldMap)
import Data.Generic (class Generic, gShow)
import Data.Int as Int
import Data.Module (class LeftModule, class RightModule)
import Data.Newtype (class Newtype)
import Data.Ord (abs)
import Data.Rational (Rational, (%))
import Data.Rational as Rational
import Global.Unsafe (unsafeToFixed)
import Math (pow)
import Prelude

--------------------------------------------------------------------------------

-- | An amount of money in the smallest discrete unit of a particular currency.
-- | For example, `wrap 256 :: Discrete GBP` would represent £2.56, whereas
-- | `wrap 256 :: Discrete JPY` would represent ¥256. If you want to work with
-- | higher granularity, you can define your own currency type.
newtype Discrete (c :: CurrencyK) = Discrete Int
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

--------------------------------------------------------------------------------

-- | Amounts of money with exact arithmetic.
newtype Dense (c :: CurrencyK) = Dense Rational
derive newtype instance eqDense  :: Eq (Dense c)
derive newtype instance ordDense :: Ord (Dense c)
derive instance newtypeDense     :: Newtype (Dense c) _
instance showDense :: Show (Dense c) where
  show (Dense r) = "(Dense " <> show r <> ")"

instance leftModuleDense :: LeftModule (Dense c) Rational where
  mzeroL = Dense zero
  maddL (Dense a) (Dense b) = Dense (a + b)
  msubL (Dense a) (Dense b) = Dense (a - b)
  mmulL a         (Dense b) = Dense (a * b)

instance rightModuleDense :: RightModule (Dense c) Rational where
  mzeroR = Dense zero
  maddR (Dense a) (Dense b) = Dense (a + b)
  msubR (Dense a) (Dense b) = Dense (a - b)
  mmulR (Dense a) b         = Dense (a * b)

formatDense :: ∀ c. Currency c => Rounding -> Format -> Dense c -> String
formatDense r f d = formatDiscrete f $ fromDense r d

--------------------------------------------------------------------------------

-- | Rounding policy.
data Rounding = Up | Down | ToZero | FromZero | Nearest
derive instance eqRounding  :: Eq Rounding
derive instance ordRounding :: Ord Rounding

-- | Convert a discrete amount to a dense amount.
fromDiscrete :: ∀ c. Currency c => Discrete c -> Dense c
fromDiscrete (Discrete n) = Dense $ n % Int.pow 10 d
  where d = Currency.decimals (CProxy :: CProxy c)

-- | Convert a dense amount to a discrete amount, rounding accordingly.
fromDense :: ∀ c. Currency c => Rounding -> Dense c -> Discrete c
fromDense r (Dense n) = Discrete case r of
  Up       -> Int.ceil  n'
  Down     -> Int.floor n'
  ToZero   -> (if n < zero then Int.ceil else Int.floor) n'
  FromZero -> (if n > zero then Int.ceil else Int.floor) n'
  Nearest  -> Int.round n'
  where n' = Rational.toNumber $ n * (Int.pow 10 d % 1)
        d  = Currency.decimals (CProxy :: CProxy c)
