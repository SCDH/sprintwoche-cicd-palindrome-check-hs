{-|
Module      : Palindrome
Description : Palindrome checker
Copyright   : (c) 2025 Mirko Westermeier
License     : MIT

Comprehensive palindrome detection library.
-}
module Palindrome where

-- |  Checks whether a given list of comparable things is a palindrome
--    (is the same after reversing the structure).
--
-- >>> isPalindrome "racecar"
-- True
--
-- >>> isPalindrome "()()"
-- False
--
-- >>> isPalindrome [1,2,3,2,1]
-- True
--
-- >>> isPalindrome []
-- True
--
-- >>> isPalindrome "a"
-- True
isPalindrome :: Eq a => [a] -> Bool
isPalindrome []     = True
isPalindrome [_]    = True
isPalindrome (x:xs) = x == last xs && isPalindrome (init xs)
