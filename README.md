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

## order テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :purchaser
- belongs_to :item

## purchasers テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| order             | references | null: false, foreign_key: true |
| postcode          | string     | null: false |
| prefecture_id     | integer    | null: false |
| municipality      | string     | null: false |
| street_address    | string     | null: false |
| building_name     | string     |             |
| telephone_number  | string     | null: false |

### Association

- belongs_to :order

