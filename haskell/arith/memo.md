
* haskellのmonad parserの標準は https://github.com/haskell/parsec みたい

## parserの方針
(基本、tapl-haskell に則る)
* programming hasekell v2で作成したoriginal parserをforkしておく.
* boolだけdata型を定義
* parseTrue, parseFalse, parseIf の3つの構文をサポートするようなparserを書く
  * parserはそれぞれTermTrue, TermFalse, TermIfといった `Term` を返すように 
* evalを書く.
  * `eval` は Term を受け取って、各Termに応じた計算を行い、valueを返す.
