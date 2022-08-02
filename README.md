# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| nickname           | string              | null: false               |
| first_name         | string              | null: false               |
| family_name        | string              | null: false               |
| first_name_kana    | string              | null: false               |
| family_name_kana   | string              | null: false               |
| birth_date         | date                | null: false               |

### Association

* has_many :items
* has_many :orders


## items table 

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| name                                | string     | null: false                    |
| price                               | integer    | null: false                    |
| introduction                        | text       | null: false                    |
| seller                              | references | null: false                    |
| category_id                         | references | null: false                    |
| status_id                           | references | null: false                    |
| trading_price_id                    | references | null: false                    |
| trading_area_id                     | references | null: false                    |
| trading_days_id                     | references | null: false                    |

### Association

- belongs_to :user
- belongs_to :order


## order table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| user               | references          | null: false, foreign_key: true |
| item               | references          | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address


## addresses table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| post_code          | string              | null: false                    |
| prefecture         | integer             | null: false                    |
| city               | string              | null: false                    |
| house_number       | string              | null: false                    |
| building_name      | string              |                                |
| phone_number       | string              | null: false                    |
| order              | references          | null: false, foreign_key: true |

### Association

- belongs_to :order