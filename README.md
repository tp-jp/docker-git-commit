# docker-git-commit

この Docker イメージは、Git リポジトリの変更を検出し、自動でコミット＆プッシュを行うためのものです。

## 使用方法

以下のコマンドを実行することで、リポジトリの変更をコミット＆プッシュできます。

```sh
docker run \
  -e GIT_EMAIL="your-email@example.com" \
  -e GIT_NAME="Your Name" \
  -e COMMIT_MESSAGE="Automated update" \
  -v /path/to/repo:/workspace \
  your-docker-image
```

## 環境変数

| 変数名           | 説明                           | デフォルト値        |
| ---------------- | ------------------------------ | ------------------- |
| `GIT_EMAIL`      | Git コミット時のメールアドレス | `action@github.com` |
| `GIT_NAME`       | Git コミット時のユーザー名     | `GitHub Action`     |
| `COMMIT_MESSAGE` | コミットメッセージ             | `Update files`      |

## マウントするディレクトリ

- `/workspace`: クローンしたリポジトリを配置するディレクトリ。ホストのリポジトリディレクトリをマウントしてください。

## 動作概要

1. 環境変数 `GIT_EMAIL` と `GIT_NAME` を用いて Git の設定を行います。
2. `/workspace` 内の変更を検出し、変更がある場合はコミット＆プッシュを実行します。
3. 変更がない場合は何もせず終了します。
