# README

<h1 align="center">エピソードトーク投稿・レビューサイト</h1>

- エピソードトークを投稿してお互いにレビューをするサイトです。
- 作成期間 2021/12/24 ~ 
- ![top_page](https://gyazo.com/5e5b28370d72bdddd6eb9b9b646ef84a/raw)

## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->

## 機能紹介
- 新規会員登録・ログインをすると投稿することができます。
- 投稿機能、ログインがお済みでない方も投稿一覧を閲覧可能です。
- 音声読み上げ機能、投稿された内容を音声で読み上げます。

## サイトURL紹介(デプロイ未実施)
- 

## :globe_with_meridians: インストール方法
1.このリポジトリを複製<br>
`$ git clone https://github.com/szakisip/zfront_room.git`

2.インストールしたリポジトリに移動<br>
`$ cd zfront_room.git`

3.gemをアプリケーションに適用<br>
`$ bundle install`<br>

4.DBの作成&反映<br>
`$ rails db:create`<br>
`$ rails db:migrate`<br>

5.アプリケーションの起動<br>
`$ rails s`<br>
:point_right:`http://localhost:3000`

## 目指した課題解決
- 対面し辛い世の中になり、実際に会うときやオンライン対面するときに面白い話ができるようにする。
- 事前にエピソードトークが面白いかどうかを第三者に判断してもらう。

## 洗い出した要件
- エピソードトーク投稿機能
- いいね機能
- 音声読み上げ機能
- ユーザー認証機能
- 検索機能

<a><img src="assets/images/説明用①.png" height="60px;" /></a>

## 実装予定の機能
- いいね機能
- 検索機能

## ER図
![ER](https://gyazo.com/b23c09ef3d194a8ef132216b162923c8/raw)



# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |
| nickname           | string | null: false              |

### Association

- has_many :talks
- has_many :favorites

## talks テーブル

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| user         | references  | null: false, foreign_key: true |
| title        | string      | null: false                    |
| category_id  | integer     | null: false                    |
| talk_text    | text        | null: false                    |

### Association

- belongs_to :user
- has_many :favorites

## favorites テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| talk   | references | null: false, foreign_key: true |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :talk
