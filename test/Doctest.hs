module Main where

import Test.DocTest

main :: IO ()
main = doctest ["-isrc", "lib/Palindrome.hs"]
