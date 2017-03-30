module Data.Finance.Currency where

foreign import kind Currency

data CProxy (c :: Currency) = CProxy

class Currency (c :: Currency) where
  code     :: CProxy c -> String
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

instance currencyAED :: Currency AED where
  code     _ = "AED"
  decimals _ = 2

instance currencyAFN :: Currency AFN where
  code     _ = "AFN"
  decimals _ = 2

instance currencyALL :: Currency ALL where
  code     _ = "ALL"
  decimals _ = 2

instance currencyAMD :: Currency AMD where
  code     _ = "AMD"
  decimals _ = 2

instance currencyANG :: Currency ANG where
  code     _ = "ANG"
  decimals _ = 2

instance currencyAOA :: Currency AOA where
  code     _ = "AOA"
  decimals _ = 2

instance currencyARS :: Currency ARS where
  code     _ = "ARS"
  decimals _ = 2

instance currencyAUD :: Currency AUD where
  code     _ = "AUD"
  decimals _ = 2

instance currencyAWG :: Currency AWG where
  code     _ = "AWG"
  decimals _ = 2

instance currencyAZN :: Currency AZN where
  code     _ = "AZN"
  decimals _ = 2

instance currencyBAM :: Currency BAM where
  code     _ = "BAM"
  decimals _ = 2

instance currencyBBD :: Currency BBD where
  code     _ = "BBD"
  decimals _ = 2

instance currencyBDT :: Currency BDT where
  code     _ = "BDT"
  decimals _ = 2

instance currencyBGN :: Currency BGN where
  code     _ = "BGN"
  decimals _ = 2

instance currencyBHD :: Currency BHD where
  code     _ = "BHD"
  decimals _ = 3

instance currencyBIF :: Currency BIF where
  code     _ = "BIF"
  decimals _ = 0

instance currencyBMD :: Currency BMD where
  code     _ = "BMD"
  decimals _ = 2

instance currencyBND :: Currency BND where
  code     _ = "BND"
  decimals _ = 2

instance currencyBOB :: Currency BOB where
  code     _ = "BOB"
  decimals _ = 2

instance currencyBOV :: Currency BOV where
  code     _ = "BOV"
  decimals _ = 2

instance currencyBRL :: Currency BRL where
  code     _ = "BRL"
  decimals _ = 2

instance currencyBSD :: Currency BSD where
  code     _ = "BSD"
  decimals _ = 2

instance currencyBTN :: Currency BTN where
  code     _ = "BTN"
  decimals _ = 2

instance currencyBWP :: Currency BWP where
  code     _ = "BWP"
  decimals _ = 2

instance currencyBYR :: Currency BYR where
  code     _ = "BYR"
  decimals _ = 0

instance currencyBZD :: Currency BZD where
  code     _ = "BZD"
  decimals _ = 2

instance currencyCAD :: Currency CAD where
  code     _ = "CAD"
  decimals _ = 2

instance currencyCDF :: Currency CDF where
  code     _ = "CDF"
  decimals _ = 2

instance currencyCHE :: Currency CHE where
  code     _ = "CHE"
  decimals _ = 2

instance currencyCHF :: Currency CHF where
  code     _ = "CHF"
  decimals _ = 2

instance currencyCHW :: Currency CHW where
  code     _ = "CHW"
  decimals _ = 2

instance currencyCLF :: Currency CLF where
  code     _ = "CLF"
  decimals _ = 4

instance currencyCLP :: Currency CLP where
  code     _ = "CLP"
  decimals _ = 0

instance currencyCNY :: Currency CNY where
  code     _ = "CNY"
  decimals _ = 2

instance currencyCOP :: Currency COP where
  code     _ = "COP"
  decimals _ = 2

instance currencyCOU :: Currency COU where
  code     _ = "COU"
  decimals _ = 2

instance currencyCRC :: Currency CRC where
  code     _ = "CRC"
  decimals _ = 2

instance currencyCUC :: Currency CUC where
  code     _ = "CUC"
  decimals _ = 2

instance currencyCUP :: Currency CUP where
  code     _ = "CUP"
  decimals _ = 2

instance currencyCVE :: Currency CVE where
  code     _ = "CVE"
  decimals _ = 2

instance currencyCZK :: Currency CZK where
  code     _ = "CZK"
  decimals _ = 2

instance currencyDJF :: Currency DJF where
  code     _ = "DJF"
  decimals _ = 0

instance currencyDKK :: Currency DKK where
  code     _ = "DKK"
  decimals _ = 2

instance currencyDOP :: Currency DOP where
  code     _ = "DOP"
  decimals _ = 2

instance currencyDZD :: Currency DZD where
  code     _ = "DZD"
  decimals _ = 2

instance currencyEGP :: Currency EGP where
  code     _ = "EGP"
  decimals _ = 2

instance currencyERN :: Currency ERN where
  code     _ = "ERN"
  decimals _ = 2

instance currencyETB :: Currency ETB where
  code     _ = "ETB"
  decimals _ = 2

instance currencyEUR :: Currency EUR where
  code     _ = "EUR"
  decimals _ = 2

instance currencyFJD :: Currency FJD where
  code     _ = "FJD"
  decimals _ = 2

instance currencyFKP :: Currency FKP where
  code     _ = "FKP"
  decimals _ = 2

instance currencyGBP :: Currency GBP where
  code     _ = "GBP"
  decimals _ = 2

instance currencyGEL :: Currency GEL where
  code     _ = "GEL"
  decimals _ = 2

instance currencyGHS :: Currency GHS where
  code     _ = "GHS"
  decimals _ = 2

instance currencyGIP :: Currency GIP where
  code     _ = "GIP"
  decimals _ = 2

instance currencyGMD :: Currency GMD where
  code     _ = "GMD"
  decimals _ = 2

instance currencyGNF :: Currency GNF where
  code     _ = "GNF"
  decimals _ = 0

instance currencyGTQ :: Currency GTQ where
  code     _ = "GTQ"
  decimals _ = 2

instance currencyGYD :: Currency GYD where
  code     _ = "GYD"
  decimals _ = 2

instance currencyHKD :: Currency HKD where
  code     _ = "HKD"
  decimals _ = 2

instance currencyHNL :: Currency HNL where
  code     _ = "HNL"
  decimals _ = 2

instance currencyHRK :: Currency HRK where
  code     _ = "HRK"
  decimals _ = 2

instance currencyHTG :: Currency HTG where
  code     _ = "HTG"
  decimals _ = 2

instance currencyHUF :: Currency HUF where
  code     _ = "HUF"
  decimals _ = 2

instance currencyIDR :: Currency IDR where
  code     _ = "IDR"
  decimals _ = 2

instance currencyILS :: Currency ILS where
  code     _ = "ILS"
  decimals _ = 2

instance currencyINR :: Currency INR where
  code     _ = "INR"
  decimals _ = 2

instance currencyIQD :: Currency IQD where
  code     _ = "IQD"
  decimals _ = 3

instance currencyIRR :: Currency IRR where
  code     _ = "IRR"
  decimals _ = 2

instance currencyISK :: Currency ISK where
  code     _ = "ISK"
  decimals _ = 0

instance currencyJMD :: Currency JMD where
  code     _ = "JMD"
  decimals _ = 2

instance currencyJOD :: Currency JOD where
  code     _ = "JOD"
  decimals _ = 3

instance currencyJPY :: Currency JPY where
  code     _ = "JPY"
  decimals _ = 0

instance currencyKES :: Currency KES where
  code     _ = "KES"
  decimals _ = 2

instance currencyKGS :: Currency KGS where
  code     _ = "KGS"
  decimals _ = 2

instance currencyKHR :: Currency KHR where
  code     _ = "KHR"
  decimals _ = 2

instance currencyKMF :: Currency KMF where
  code     _ = "KMF"
  decimals _ = 0

instance currencyKPW :: Currency KPW where
  code     _ = "KPW"
  decimals _ = 2

instance currencyKRW :: Currency KRW where
  code     _ = "KRW"
  decimals _ = 0

instance currencyKWD :: Currency KWD where
  code     _ = "KWD"
  decimals _ = 3

instance currencyKYD :: Currency KYD where
  code     _ = "KYD"
  decimals _ = 2

instance currencyKZT :: Currency KZT where
  code     _ = "KZT"
  decimals _ = 2

instance currencyLAK :: Currency LAK where
  code     _ = "LAK"
  decimals _ = 2

instance currencyLBP :: Currency LBP where
  code     _ = "LBP"
  decimals _ = 2

instance currencyLKR :: Currency LKR where
  code     _ = "LKR"
  decimals _ = 2

instance currencyLRD :: Currency LRD where
  code     _ = "LRD"
  decimals _ = 2

instance currencyLSL :: Currency LSL where
  code     _ = "LSL"
  decimals _ = 2

instance currencyLTL :: Currency LTL where
  code     _ = "LTL"
  decimals _ = 2

instance currencyLYD :: Currency LYD where
  code     _ = "LYD"
  decimals _ = 3

instance currencyMAD :: Currency MAD where
  code     _ = "MAD"
  decimals _ = 2

instance currencyMDL :: Currency MDL where
  code     _ = "MDL"
  decimals _ = 2

instance currencyMGA :: Currency MGA where
  code     _ = "MGA"
  decimals _ = 2

instance currencyMKD :: Currency MKD where
  code     _ = "MKD"
  decimals _ = 2

instance currencyMMK :: Currency MMK where
  code     _ = "MMK"
  decimals _ = 2

instance currencyMNT :: Currency MNT where
  code     _ = "MNT"
  decimals _ = 2

instance currencyMOP :: Currency MOP where
  code     _ = "MOP"
  decimals _ = 2

instance currencyMRO :: Currency MRO where
  code     _ = "MRO"
  decimals _ = 2

instance currencyMUR :: Currency MUR where
  code     _ = "MUR"
  decimals _ = 2

instance currencyMVR :: Currency MVR where
  code     _ = "MVR"
  decimals _ = 2

instance currencyMWK :: Currency MWK where
  code     _ = "MWK"
  decimals _ = 2

instance currencyMXN :: Currency MXN where
  code     _ = "MXN"
  decimals _ = 2

instance currencyMXV :: Currency MXV where
  code     _ = "MXV"
  decimals _ = 2

instance currencyMYR :: Currency MYR where
  code     _ = "MYR"
  decimals _ = 2

instance currencyMZN :: Currency MZN where
  code     _ = "MZN"
  decimals _ = 2

instance currencyNAD :: Currency NAD where
  code     _ = "NAD"
  decimals _ = 2

instance currencyNGN :: Currency NGN where
  code     _ = "NGN"
  decimals _ = 2

instance currencyNIO :: Currency NIO where
  code     _ = "NIO"
  decimals _ = 2

instance currencyNOK :: Currency NOK where
  code     _ = "NOK"
  decimals _ = 2

instance currencyNPR :: Currency NPR where
  code     _ = "NPR"
  decimals _ = 2

instance currencyNZD :: Currency NZD where
  code     _ = "NZD"
  decimals _ = 2

instance currencyOMR :: Currency OMR where
  code     _ = "OMR"
  decimals _ = 3

instance currencyPAB :: Currency PAB where
  code     _ = "PAB"
  decimals _ = 2

instance currencyPEN :: Currency PEN where
  code     _ = "PEN"
  decimals _ = 2

instance currencyPGK :: Currency PGK where
  code     _ = "PGK"
  decimals _ = 2

instance currencyPHP :: Currency PHP where
  code     _ = "PHP"
  decimals _ = 2

instance currencyPKR :: Currency PKR where
  code     _ = "PKR"
  decimals _ = 2

instance currencyPLN :: Currency PLN where
  code     _ = "PLN"
  decimals _ = 2

instance currencyPYG :: Currency PYG where
  code     _ = "PYG"
  decimals _ = 0

instance currencyQAR :: Currency QAR where
  code     _ = "QAR"
  decimals _ = 2

instance currencyRON :: Currency RON where
  code     _ = "RON"
  decimals _ = 2

instance currencyRSD :: Currency RSD where
  code     _ = "RSD"
  decimals _ = 2

instance currencyRUB :: Currency RUB where
  code     _ = "RUB"
  decimals _ = 2

instance currencyRWF :: Currency RWF where
  code     _ = "RWF"
  decimals _ = 0

instance currencySAR :: Currency SAR where
  code     _ = "SAR"
  decimals _ = 2

instance currencySBD :: Currency SBD where
  code     _ = "SBD"
  decimals _ = 2

instance currencySCR :: Currency SCR where
  code     _ = "SCR"
  decimals _ = 2

instance currencySDG :: Currency SDG where
  code     _ = "SDG"
  decimals _ = 2

instance currencySEK :: Currency SEK where
  code     _ = "SEK"
  decimals _ = 2

instance currencySGD :: Currency SGD where
  code     _ = "SGD"
  decimals _ = 2

instance currencySHP :: Currency SHP where
  code     _ = "SHP"
  decimals _ = 2

instance currencySLL :: Currency SLL where
  code     _ = "SLL"
  decimals _ = 2

instance currencySOS :: Currency SOS where
  code     _ = "SOS"
  decimals _ = 2

instance currencySRD :: Currency SRD where
  code     _ = "SRD"
  decimals _ = 2

instance currencySSP :: Currency SSP where
  code     _ = "SSP"
  decimals _ = 2

instance currencySTD :: Currency STD where
  code     _ = "STD"
  decimals _ = 2

instance currencySVC :: Currency SVC where
  code     _ = "SVC"
  decimals _ = 2

instance currencySYP :: Currency SYP where
  code     _ = "SYP"
  decimals _ = 2

instance currencySZL :: Currency SZL where
  code     _ = "SZL"
  decimals _ = 2

instance currencyTHB :: Currency THB where
  code     _ = "THB"
  decimals _ = 2

instance currencyTJS :: Currency TJS where
  code     _ = "TJS"
  decimals _ = 2

instance currencyTMT :: Currency TMT where
  code     _ = "TMT"
  decimals _ = 2

instance currencyTND :: Currency TND where
  code     _ = "TND"
  decimals _ = 3

instance currencyTOP :: Currency TOP where
  code     _ = "TOP"
  decimals _ = 2

instance currencyTRY :: Currency TRY where
  code     _ = "TRY"
  decimals _ = 2

instance currencyTTD :: Currency TTD where
  code     _ = "TTD"
  decimals _ = 2

instance currencyTWD :: Currency TWD where
  code     _ = "TWD"
  decimals _ = 2

instance currencyTZS :: Currency TZS where
  code     _ = "TZS"
  decimals _ = 2

instance currencyUAH :: Currency UAH where
  code     _ = "UAH"
  decimals _ = 2

instance currencyUGX :: Currency UGX where
  code     _ = "UGX"
  decimals _ = 0

instance currencyUSD :: Currency USD where
  code     _ = "USD"
  decimals _ = 2

instance currencyUSN :: Currency USN where
  code     _ = "USN"
  decimals _ = 2

instance currencyUYI :: Currency UYI where
  code     _ = "UYI"
  decimals _ = 0

instance currencyUYU :: Currency UYU where
  code     _ = "UYU"
  decimals _ = 2

instance currencyUZS :: Currency UZS where
  code     _ = "UZS"
  decimals _ = 2

instance currencyVEF :: Currency VEF where
  code     _ = "VEF"
  decimals _ = 2

instance currencyVND :: Currency VND where
  code     _ = "VND"
  decimals _ = 0

instance currencyVUV :: Currency VUV where
  code     _ = "VUV"
  decimals _ = 0

instance currencyWST :: Currency WST where
  code     _ = "WST"
  decimals _ = 2

instance currencyXAF :: Currency XAF where
  code     _ = "XAF"
  decimals _ = 0

instance currencyXCD :: Currency XCD where
  code     _ = "XCD"
  decimals _ = 2

instance currencyXOF :: Currency XOF where
  code     _ = "XOF"
  decimals _ = 0

instance currencyXPF :: Currency XPF where
  code     _ = "XPF"
  decimals _ = 0

instance currencyYER :: Currency YER where
  code     _ = "YER"
  decimals _ = 2

instance currencyZAR :: Currency ZAR where
  code     _ = "ZAR"
  decimals _ = 2

instance currencyZMW :: Currency ZMW where
  code     _ = "ZMW"
  decimals _ = 2

instance currencyZWL :: Currency ZWL where
  code     _ = "ZWL"
  decimals _ = 2
