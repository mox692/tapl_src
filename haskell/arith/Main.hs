module Main where

import Text.Printf
import Parser

main :: IO ()
main = do
    input <- getLine
    printf "input is `%s`\n" input
    let fds = parse
    printf "parse res is %d" fds
