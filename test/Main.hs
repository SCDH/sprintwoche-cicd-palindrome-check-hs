module Main where

import Test.Hspec
import Test.Hspec.QuickCheck
import Palindrome

data Color = Red | Green | Blue deriving Eq

main :: IO ()
main = hspec $ describe "Palindrome checker tests" $ do

  describe "Examples" $ do
    it "Palindrome with even elements" $
      isPalindrome "abba" `shouldBe` True
    it "Palindrome with odd elements" $
      isPalindrome "racecar" `shouldBe` True
    it "Not a palindrome (mixed case)" $
      isPalindrome "Racecar" `shouldBe` False
    it "Not a palindrome (although it lookes like one)" $
      isPalindrome "()()" `shouldBe` False
    it "Not a palindrome of numbers" $
      isPalindrome [17, 42, 17, 42 :: Int] `shouldBe` False
    it "A palindrome of colors" $
      isPalindrome [Blue, Red, Green, Red, Blue] `shouldBe` True

  describe "Universal properties" $ do
    it "Empty list is a palindrome" $
      isPalindrome ([] :: [Int]) `shouldBe` True
    prop "Singleton lists are palindromes" $ \x ->
      isPalindrome [x :: Char] `shouldBe` True
    describe "Equal on reverse <=> palindrome" $ do
      prop "String" $ \list ->
        let tsil = reverse list :: [Char]
        in  isPalindrome list `shouldBe` (list == tsil)
      prop "Doubles" $ \list ->
        let tsil = reverse list :: [Double]
        in  isPalindrome list `shouldBe` (list == tsil)
