# これは何

squid を使ったプロキシの動作確認がしたかっただけの cookbook


## 実行方法

* vagrant がインストールされていること
* ruby がインストールされていること


```
$ cd example
$ bundle install
$ libralian-chef install
$ vagrant up
```


http://localhost:9080/ へアクセスするとアクセス制限がかかるが、
プロキシを設定して http://localhost/ へアクセスするとアクセスできる。

プロキシは

* ホスト名: localhost
* ポート番号: 3128

に設定します。
