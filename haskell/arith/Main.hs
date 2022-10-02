module Main where

import Text.Printf

main :: IO ()
main = do
    input <- getLine
    printf "input is `%s`\n" input
