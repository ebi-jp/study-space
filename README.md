## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, default: ""|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default: ""|
|grade|string|null: false, default: ""|
|image|string||
|reset_passwoed_token|string||
|reset_password_sent_at|datetime||
|remember_created_at|datetime||
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
|grade|string|null: false, default: ""|
|group_id|integer|null: false, foreign_key: true|

### Association
- has_many :posts
