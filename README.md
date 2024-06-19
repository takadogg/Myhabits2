## アプリケーション名

Myhabits2

## アプリケーション概要

　自信の行動をひとつひとつを客観的に評価し、気づきを得るためのアプリケーションです

## URL

https://myhabits2.onrender.com

## 利用方法

### 直前の行動とそれに対する評価の投稿

　自分が今まさにやっていたことを記入し、目標に沿った行動になっているかを基準に"〇"か"×"の評価を下して投稿します（歯磨きなど、どちらでもない場合は"-"を選択）。
　言葉にしないと気づきにくい自身の行動習慣を視覚化して改善を促し、毎日の習慣による目標達成に繋げます。

## アプリケーションを作成した背景

　本アプリは、ベストセラーであるjames clear先生の『atomic habits』で紹介されていた習慣観察表を、デジタルデバイス上で簡単に実行できるようにしたものです。

　制作者本人が過去に紙媒体で実践していましたが、日常生活の中で紙に細かい行動の記録をする煩わしさを感じました。atomic habitsに影響を受けた人が、最初のステップである習慣の観察をより気軽に始められるようにと願い今回の開発に至りました。

## 実装した機能について画像やGIF

### 習慣投稿機能

　一番上の欄に直前の行動を入力したあと、プルダウンから評価を選択します。最後に記録するを押すと送信が完了し、一番上に表示されます。

[![Image from Gyazo](https://i.gyazo.com/0a3829632a559688b423dd198a252766.gif)](https://gyazo.com/0a3829632a559688b423dd198a252766)

## 実装予定の機能

日付ごとにページを分ける機能を実装中

ユーザー管理機能の実装予定

## データベース設計

[![Image from Gyazo](https://i.gyazo.com/39e3fdab65f3cfaa169569b6a3c9bc2a.png)](https://gyazo.com/39e3fdab65f3cfaa169569b6a3c9bc2a)

## 画面遷移図

※現在、習慣投稿ページのみ

## 開発環境

* フロントエンド

    HTML, CSS

* バックエンド

    Ruby 3.2.0

    Ruby on Rails 7.0.8.4

* 使用したGeｍ

    ActiveHash

* データベース

    SQLite (development)

    PostgreSQL (production)

## ローカルでの動作方法

### １．リポジトリをクローンします

```
git clone https://github.com/takadogg/Myhabits2
```

### ２．必要なGemをインストールします

```
bundle install
```

### ３．データベースを準備します

```
rails db:create

rails db:migrate

rails db:seed(必要な場合)
```

## 工夫したポイント

* 行動を評価する機能では、ActiveHashを用いてパフォーマンスを向上させました。

* 画面遷移をなくすことにより、一つ一つの記録をストレスなく行えるようにしました。