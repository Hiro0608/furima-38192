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
* has_many :order


## items table 

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| name_id                             | status     | null: false                    |
| image                               | image      | null: false                    |
| price                               | integer    | null: false                    |
| introduction                        | text       | null: false                    |
| seller                              | references | null: false                    |
| category                            | integer    | null: false                    |
| status                              | integer    | null: false                    |
| trading_price                       | integer    | null: false                    |
| trading_area                        | integer    | null: false                    |
| trading_days                        | integer    | null: false                    |

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
- belongs_to :address


## addresses table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| post_code          | string              | null: false                    |
| city               | string              | null: false                    |
| house_humber       | string              | null: false                    |
| building_name      | string              |                                |
| phone_number       | string              | null: false, unique: true      |

### Association

- belongs_to :order