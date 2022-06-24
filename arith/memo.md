触りながらのメモ

## 概要
* makeでコンパイルできる(OCaml動かす環境は普通に要る)
* srcコードを評価して値を返してくれる
* すでに色んなsyntaxがサポートされている(詳しくはlexer.mlとかをみる)

## 入力ファイル例
整数1つ
```
42;
-> 42
```

if
```
if false then 4 else 5; 
-> 5
```

succ, pred
```
pred(succ(0));
-> 0
```

## その他
* 式(or 文)の末尾にセミコロンがないといけない
* Lexer() -> parser.Token -> parser() -> List[command] 
  -> process command関数 -> eval(どういう変換skちえる？)(term -> term)
  -> printtm_ATermで、term型ごとにprintしてうr 

## TODO
* parserの動きをおう
* syntaxを追加してみるのもいいかも
