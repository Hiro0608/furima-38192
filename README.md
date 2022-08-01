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

### Association

* has_many :items
* has_one  :profiles
* has_one  :user_items


## items table 

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| name                                | string     | null: false                    |
| introduction                        | text       | null: false                    |
| price                               | integer    | null: false                    |
| brand                               | integer    | null: false                    |
| item_condition                      | integer    | null: false                    |
| postage_payer                       | integer    | null: false                    |
| preparation_day                     | integer    | null: false                    |
| postage_type                        | integer    | null: false                    |
| category                            | integer    | null: false                    |
| trading_status                      | integer    | null: false                    |
| seller                              | references | null: false                    |
| buyer                               | references | null: false                    |

### Association

- belongs_to :user


## profiles table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| user_id            | string              | null: false                    |
| item_id            | string              | null: false                    |

### Association

- belongs_to :user


## user_items table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| family_name        | string              | null: false                    |
| first_name_kana    | string              | null: false                    |
| family_name_kana   | string              | null: false                    |
| post_code          | string              | null: false                    |
| city               | string              | null: false                    |
| house_humber       | string              | null: false                    |
| building_name      | string              | null: false                    |
| phone_number       | string              | null: false, unique: true      |
| birth_date         | date                | null: false                    |

### Association

- belongs_to :user