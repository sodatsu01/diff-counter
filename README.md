# 作業量チェッカー
## これはなに
- 前回`./diff-counter.sh`実行以降、今回`./diff-counter.sh`までに更新されたファイルの行数を表示する
  - 実行コマンド`source ./diff-counter.sh`
  - 環境変数`SPRIT_COMMIT_HASH`にファイル実行時のコミットハッシュを設定する

- 初回起動時(環境変数`SPRIT_COMMIT_HASH`がない場合)現在のHEADのコミットハッシュを登録する
- 2回目以降(環境変数`SPRIT_COMMIT_HASH`がある場合)`git diff --stat $SPRIT_COMMIT_HASH`を表示し、現在のHEADのコミットハッシュを登録する
## TO BE BETTER
- [ ] 定刻実行版
  - cron/ sleep
- [ ] ディレクトリ指定
- [ ] 自動コミットハッシュ登録のオプション
- [ ] 環境変数の掃除
