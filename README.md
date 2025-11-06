# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association

- has_many :posts
- has_many :lifehack_posts

## posts テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| title              | string     | null: false |
| category_id        | integer    | null: false |
| scheduled_at       | datetime   | null: false |
| description        | text       | null: false |
| user               | references | null: false, foreign_key |

### Association

- belongs_to :user
- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to :category

## lifehack_posts テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| title              | string     | null: false |
| category_id        | integer    | null: false |
| description        | text       | null: false |
| user               | references | null: false, foreign_key |

### Association

- belongs_to :user
- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to :category
