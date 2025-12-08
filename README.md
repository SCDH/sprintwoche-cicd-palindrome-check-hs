palindrome-check
================

Example project for CI/CD Sprintwoche of SCDH, written in Haskell.

```haskell
import Palindrome

isPalindrome "racecar"    -- True
isPalindrome "()()"       -- False
isPalindrome [1,2,3,2,1]  -- True
isPalindrome []           -- True
isPalindrome "a"          -- True
```

## Build dependencies and the library

This is a standard GHC/cabal project. Get GHC and cabal via [ghcup](https://www.haskell.org/ghcup/).

```
$ cd palindrome-check
$ cabal build --only-dependencies
$ cabal build
```

## Tests

This project has unit/property tests and doctests:

```
$ cabal test palindrome-test
$ cabal test doctest
```

Or run buth with `cabal test`.

## Generate API docs

```
$ cabal haddock
Documentation created: [...]/doc/html/palindrome-check/
```

The [API docs are also available on GitLab pages](https://palindrome-checker-hs-eb3117.zivgitlabpages.uni-muenster.de/).

## Releases

[Package releases](https://zivgitlab.uni-muenster.de/SCDH/spike/2025-cicd-sprintwoche/beispielprojekte/palindrome-checker-hs/-/releases) are continuously generated on tags named `^v[\d.]+$`, for example `v0.1.0`.

## Author and license

(c) 2025 Mirko Westermeier

Released under the MIT license. See [LICENSE](LICENSE) for details.
