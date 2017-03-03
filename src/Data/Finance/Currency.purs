module Data.Finance.Currency where

foreign import kind Currency

data CProxy (c :: Currency) = CProxy

class Currency (c :: Currency) where
  decimals :: CProxy c -> Int

foreign import data AED :: Currency
foreign import data AFN :: Currency
foreign import data ALL :: Currency
foreign import data AMD :: Currency
foreign import data ANG :: Currency
foreign import data AOA :: Currency
foreign import data ARS :: Currency
foreign import data AUD :: Currency
foreign import data AWG :: Currency
foreign import data AZN :: Currency
foreign import data BAM :: Currency
foreign import data BBD :: Currency
foreign import data BDT :: Currency
foreign import data BGN :: Currency
foreign import data BHD :: Currency
foreign import data BIF :: Currency
foreign import data BMD :: Currency
foreign import data BND :: Currency
foreign import data BOB :: Currency
foreign import data BOV :: Currency
foreign import data BRL :: Currency
foreign import data BSD :: Currency
foreign import data BTN :: Currency
foreign import data BWP :: Currency
foreign import data BYR :: Currency
foreign import data BZD :: Currency
foreign import data CAD :: Currency
foreign import data CDF :: Currency
foreign import data CHE :: Currency
foreign import data CHF :: Currency
foreign import data CHW :: Currency
foreign import data CLF :: Currency
foreign import data CLP :: Currency
foreign import data CNY :: Currency
foreign import data COP :: Currency
foreign import data COU :: Currency
foreign import data CRC :: Currency
foreign import data CUC :: Currency
foreign import data CUP :: Currency
foreign import data CVE :: Currency
foreign import data CZK :: Currency
foreign import data DJF :: Currency
foreign import data DKK :: Currency
foreign import data DOP :: Currency
foreign import data DZD :: Currency
foreign import data EGP :: Currency
foreign import data ERN :: Currency
foreign import data ETB :: Currency
foreign import data EUR :: Currency
foreign import data FJD :: Currency
foreign import data FKP :: Currency
foreign import data GBP :: Currency
foreign import data GEL :: Currency
foreign import data GHS :: Currency
foreign import data GIP :: Currency
foreign import data GMD :: Currency
foreign import data GNF :: Currency
foreign import data GTQ :: Currency
foreign import data GYD :: Currency
foreign import data HKD :: Currency
foreign import data HNL :: Currency
foreign import data HRK :: Currency
foreign import data HTG :: Currency
foreign import data HUF :: Currency
foreign import data IDR :: Currency
foreign import data ILS :: Currency
foreign import data INR :: Currency
foreign import data IQD :: Currency
foreign import data IRR :: Currency
foreign import data ISK :: Currency
foreign import data JMD :: Currency
foreign import data JOD :: Currency
foreign import data JPY :: Currency
foreign import data KES :: Currency
foreign import data KGS :: Currency
foreign import data KHR :: Currency
foreign import data KMF :: Currency
foreign import data KPW :: Currency
foreign import data KRW :: Currency
foreign import data KWD :: Currency
foreign import data KYD :: Currency
foreign import data KZT :: Currency
foreign import data LAK :: Currency
foreign import data LBP :: Currency
foreign import data LKR :: Currency
foreign import data LRD :: Currency
foreign import data LSL :: Currency
foreign import data LTL :: Currency
foreign import data LYD :: Currency
foreign import data MAD :: Currency
foreign import data MDL :: Currency
foreign import data MGA :: Currency
foreign import data MKD :: Currency
foreign import data MMK :: Currency
foreign import data MNT :: Currency
foreign import data MOP :: Currency
foreign import data MRO :: Currency
foreign import data MUR :: Currency
foreign import data MVR :: Currency
foreign import data MWK :: Currency
foreign import data MXN :: Currency
foreign import data MXV :: Currency
foreign import data MYR :: Currency
foreign import data MZN :: Currency
foreign import data NAD :: Currency
foreign import data NGN :: Currency
foreign import data NIO :: Currency
foreign import data NOK :: Currency
foreign import data NPR :: Currency
foreign import data NZD :: Currency
foreign import data OMR :: Currency
foreign import data PAB :: Currency
foreign import data PEN :: Currency
foreign import data PGK :: Currency
foreign import data PHP :: Currency
foreign import data PKR :: Currency
foreign import data PLN :: Currency
foreign import data PYG :: Currency
foreign import data QAR :: Currency
foreign import data RON :: Currency
foreign import data RSD :: Currency
foreign import data RUB :: Currency
foreign import data RWF :: Currency
foreign import data SAR :: Currency
foreign import data SBD :: Currency
foreign import data SCR :: Currency
foreign import data SDG :: Currency
foreign import data SEK :: Currency
foreign import data SGD :: Currency
foreign import data SHP :: Currency
foreign import data SLL :: Currency
foreign import data SOS :: Currency
foreign import data SRD :: Currency
foreign import data SSP :: Currency
foreign import data STD :: Currency
foreign import data SVC :: Currency
foreign import data SYP :: Currency
foreign import data SZL :: Currency
foreign import data THB :: Currency
foreign import data TJS :: Currency
foreign import data TMT :: Currency
foreign import data TND :: Currency
foreign import data TOP :: Currency
foreign import data TRY :: Currency
foreign import data TTD :: Currency
foreign import data TWD :: Currency
foreign import data TZS :: Currency
foreign import data UAH :: Currency
foreign import data UGX :: Currency
foreign import data USD :: Currency
foreign import data USN :: Currency
foreign import data UYI :: Currency
foreign import data UYU :: Currency
foreign import data UZS :: Currency
foreign import data VEF :: Currency
foreign import data VND :: Currency
foreign import data VUV :: Currency
foreign import data WST :: Currency
foreign import data XAF :: Currency
foreign import data XCD :: Currency
foreign import data XOF :: Currency
foreign import data XPF :: Currency
foreign import data YER :: Currency
foreign import data ZAR :: Currency
foreign import data ZMW :: Currency
foreign import data ZWL :: Currency

instance currencyAED :: Currency AED where decimals _ = 2
instance currencyAFN :: Currency AFN where decimals _ = 2
instance currencyALL :: Currency ALL where decimals _ = 2
instance currencyAMD :: Currency AMD where decimals _ = 2
instance currencyANG :: Currency ANG where decimals _ = 2
instance currencyAOA :: Currency AOA where decimals _ = 2
instance currencyARS :: Currency ARS where decimals _ = 2
instance currencyAUD :: Currency AUD where decimals _ = 2
instance currencyAWG :: Currency AWG where decimals _ = 2
instance currencyAZN :: Currency AZN where decimals _ = 2
instance currencyBAM :: Currency BAM where decimals _ = 2
instance currencyBBD :: Currency BBD where decimals _ = 2
instance currencyBDT :: Currency BDT where decimals _ = 2
instance currencyBGN :: Currency BGN where decimals _ = 2
instance currencyBHD :: Currency BHD where decimals _ = 3
instance currencyBIF :: Currency BIF where decimals _ = 0
instance currencyBMD :: Currency BMD where decimals _ = 2
instance currencyBND :: Currency BND where decimals _ = 2
instance currencyBOB :: Currency BOB where decimals _ = 2
instance currencyBOV :: Currency BOV where decimals _ = 2
instance currencyBRL :: Currency BRL where decimals _ = 2
instance currencyBSD :: Currency BSD where decimals _ = 2
instance currencyBTN :: Currency BTN where decimals _ = 2
instance currencyBWP :: Currency BWP where decimals _ = 2
instance currencyBYR :: Currency BYR where decimals _ = 0
instance currencyBZD :: Currency BZD where decimals _ = 2
instance currencyCAD :: Currency CAD where decimals _ = 2
instance currencyCDF :: Currency CDF where decimals _ = 2
instance currencyCHE :: Currency CHE where decimals _ = 2
instance currencyCHF :: Currency CHF where decimals _ = 2
instance currencyCHW :: Currency CHW where decimals _ = 2
instance currencyCLF :: Currency CLF where decimals _ = 4
instance currencyCLP :: Currency CLP where decimals _ = 0
instance currencyCNY :: Currency CNY where decimals _ = 2
instance currencyCOP :: Currency COP where decimals _ = 2
instance currencyCOU :: Currency COU where decimals _ = 2
instance currencyCRC :: Currency CRC where decimals _ = 2
instance currencyCUC :: Currency CUC where decimals _ = 2
instance currencyCUP :: Currency CUP where decimals _ = 2
instance currencyCVE :: Currency CVE where decimals _ = 2
instance currencyCZK :: Currency CZK where decimals _ = 2
instance currencyDJF :: Currency DJF where decimals _ = 0
instance currencyDKK :: Currency DKK where decimals _ = 2
instance currencyDOP :: Currency DOP where decimals _ = 2
instance currencyDZD :: Currency DZD where decimals _ = 2
instance currencyEGP :: Currency EGP where decimals _ = 2
instance currencyERN :: Currency ERN where decimals _ = 2
instance currencyETB :: Currency ETB where decimals _ = 2
instance currencyEUR :: Currency EUR where decimals _ = 2
instance currencyFJD :: Currency FJD where decimals _ = 2
instance currencyFKP :: Currency FKP where decimals _ = 2
instance currencyGBP :: Currency GBP where decimals _ = 2
instance currencyGEL :: Currency GEL where decimals _ = 2
instance currencyGHS :: Currency GHS where decimals _ = 2
instance currencyGIP :: Currency GIP where decimals _ = 2
instance currencyGMD :: Currency GMD where decimals _ = 2
instance currencyGNF :: Currency GNF where decimals _ = 0
instance currencyGTQ :: Currency GTQ where decimals _ = 2
instance currencyGYD :: Currency GYD where decimals _ = 2
instance currencyHKD :: Currency HKD where decimals _ = 2
instance currencyHNL :: Currency HNL where decimals _ = 2
instance currencyHRK :: Currency HRK where decimals _ = 2
instance currencyHTG :: Currency HTG where decimals _ = 2
instance currencyHUF :: Currency HUF where decimals _ = 2
instance currencyIDR :: Currency IDR where decimals _ = 2
instance currencyILS :: Currency ILS where decimals _ = 2
instance currencyINR :: Currency INR where decimals _ = 2
instance currencyIQD :: Currency IQD where decimals _ = 3
instance currencyIRR :: Currency IRR where decimals _ = 2
instance currencyISK :: Currency ISK where decimals _ = 0
instance currencyJMD :: Currency JMD where decimals _ = 2
instance currencyJOD :: Currency JOD where decimals _ = 3
instance currencyJPY :: Currency JPY where decimals _ = 0
instance currencyKES :: Currency KES where decimals _ = 2
instance currencyKGS :: Currency KGS where decimals _ = 2
instance currencyKHR :: Currency KHR where decimals _ = 2
instance currencyKMF :: Currency KMF where decimals _ = 0
instance currencyKPW :: Currency KPW where decimals _ = 2
instance currencyKRW :: Currency KRW where decimals _ = 0
instance currencyKWD :: Currency KWD where decimals _ = 3
instance currencyKYD :: Currency KYD where decimals _ = 2
instance currencyKZT :: Currency KZT where decimals _ = 2
instance currencyLAK :: Currency LAK where decimals _ = 2
instance currencyLBP :: Currency LBP where decimals _ = 2
instance currencyLKR :: Currency LKR where decimals _ = 2
instance currencyLRD :: Currency LRD where decimals _ = 2
instance currencyLSL :: Currency LSL where decimals _ = 2
instance currencyLTL :: Currency LTL where decimals _ = 2
instance currencyLYD :: Currency LYD where decimals _ = 3
instance currencyMAD :: Currency MAD where decimals _ = 2
instance currencyMDL :: Currency MDL where decimals _ = 2
instance currencyMGA :: Currency MGA where decimals _ = 2
instance currencyMKD :: Currency MKD where decimals _ = 2
instance currencyMMK :: Currency MMK where decimals _ = 2
instance currencyMNT :: Currency MNT where decimals _ = 2
instance currencyMOP :: Currency MOP where decimals _ = 2
instance currencyMRO :: Currency MRO where decimals _ = 2
instance currencyMUR :: Currency MUR where decimals _ = 2
instance currencyMVR :: Currency MVR where decimals _ = 2
instance currencyMWK :: Currency MWK where decimals _ = 2
instance currencyMXN :: Currency MXN where decimals _ = 2
instance currencyMXV :: Currency MXV where decimals _ = 2
instance currencyMYR :: Currency MYR where decimals _ = 2
instance currencyMZN :: Currency MZN where decimals _ = 2
instance currencyNAD :: Currency NAD where decimals _ = 2
instance currencyNGN :: Currency NGN where decimals _ = 2
instance currencyNIO :: Currency NIO where decimals _ = 2
instance currencyNOK :: Currency NOK where decimals _ = 2
instance currencyNPR :: Currency NPR where decimals _ = 2
instance currencyNZD :: Currency NZD where decimals _ = 2
instance currencyOMR :: Currency OMR where decimals _ = 3
instance currencyPAB :: Currency PAB where decimals _ = 2
instance currencyPEN :: Currency PEN where decimals _ = 2
instance currencyPGK :: Currency PGK where decimals _ = 2
instance currencyPHP :: Currency PHP where decimals _ = 2
instance currencyPKR :: Currency PKR where decimals _ = 2
instance currencyPLN :: Currency PLN where decimals _ = 2
instance currencyPYG :: Currency PYG where decimals _ = 0
instance currencyQAR :: Currency QAR where decimals _ = 2
instance currencyRON :: Currency RON where decimals _ = 2
instance currencyRSD :: Currency RSD where decimals _ = 2
instance currencyRUB :: Currency RUB where decimals _ = 2
instance currencyRWF :: Currency RWF where decimals _ = 0
instance currencySAR :: Currency SAR where decimals _ = 2
instance currencySBD :: Currency SBD where decimals _ = 2
instance currencySCR :: Currency SCR where decimals _ = 2
instance currencySDG :: Currency SDG where decimals _ = 2
instance currencySEK :: Currency SEK where decimals _ = 2
instance currencySGD :: Currency SGD where decimals _ = 2
instance currencySHP :: Currency SHP where decimals _ = 2
instance currencySLL :: Currency SLL where decimals _ = 2
instance currencySOS :: Currency SOS where decimals _ = 2
instance currencySRD :: Currency SRD where decimals _ = 2
instance currencySSP :: Currency SSP where decimals _ = 2
instance currencySTD :: Currency STD where decimals _ = 2
instance currencySVC :: Currency SVC where decimals _ = 2
instance currencySYP :: Currency SYP where decimals _ = 2
instance currencySZL :: Currency SZL where decimals _ = 2
instance currencyTHB :: Currency THB where decimals _ = 2
instance currencyTJS :: Currency TJS where decimals _ = 2
instance currencyTMT :: Currency TMT where decimals _ = 2
instance currencyTND :: Currency TND where decimals _ = 3
instance currencyTOP :: Currency TOP where decimals _ = 2
instance currencyTRY :: Currency TRY where decimals _ = 2
instance currencyTTD :: Currency TTD where decimals _ = 2
instance currencyTWD :: Currency TWD where decimals _ = 2
instance currencyTZS :: Currency TZS where decimals _ = 2
instance currencyUAH :: Currency UAH where decimals _ = 2
instance currencyUGX :: Currency UGX where decimals _ = 0
instance currencyUSD :: Currency USD where decimals _ = 2
instance currencyUSN :: Currency USN where decimals _ = 2
instance currencyUYI :: Currency UYI where decimals _ = 0
instance currencyUYU :: Currency UYU where decimals _ = 2
instance currencyUZS :: Currency UZS where decimals _ = 2
instance currencyVEF :: Currency VEF where decimals _ = 2
instance currencyVND :: Currency VND where decimals _ = 0
instance currencyVUV :: Currency VUV where decimals _ = 0
instance currencyWST :: Currency WST where decimals _ = 2
instance currencyXAF :: Currency XAF where decimals _ = 0
instance currencyXCD :: Currency XCD where decimals _ = 2
instance currencyXOF :: Currency XOF where decimals _ = 0
instance currencyXPF :: Currency XPF where decimals _ = 0
instance currencyYER :: Currency YER where decimals _ = 2
instance currencyZAR :: Currency ZAR where decimals _ = 2
instance currencyZMW :: Currency ZMW where decimals _ = 2
instance currencyZWL :: Currency ZWL where decimals _ = 2
