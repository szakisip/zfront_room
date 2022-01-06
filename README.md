# README
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
