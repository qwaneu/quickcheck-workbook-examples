module Main where

import Test.QuickCheck

prop_failObviously :: String -> Bool
prop_failObviously s = s == (reverse s)

main = quickCheck prop_failObviously
