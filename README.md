## userテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many :companys_users
- has_many :companys, through: :companys_users

## companyテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :companys_users
- has_many :users, through: :companys_users

## companys_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|company_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :company
- belongs_to :user