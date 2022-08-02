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
| price                               | string     | null: false                    |
| introduction                        | string     | null: false                    |
| seller_id                           | string     | null: false                    |
| category                            | string     | null: false                    |
| status                              | string     | null: false                    |
| trading_price                       | string     | null: false                    |
| trading_area                        | string     | null: false                    |
| trading_days                        | string     | null: false                    |

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
| city               | integer             | null: false                    |
| house_humber       | string              | null: false                    |
| building_name      | string              | null: false                    |
| phone_number       | string              | null: false, unique: true      |

### Association

- belongs_to :order