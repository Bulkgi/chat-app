## usersテーブル

| Column | Type   | Option      |
| ------ | ------ | ----------- |
| name   | string | null: false |
| email  | string | null: false |
|message | string | null: false | 

## Association 

-has_many :room_users
-has_many :rooms, through: room_user
-has_many :messages

## roomsテーブル

 | Colum | Type   | Option |
 | ----- | ------ | ------ |
 | name  | string | string |

## Association

-has_many :room_users
-has_many :users, through: room_user
-has_many :messages

 ## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

## Association

-belongs_to :room
-belongs_to :user

 ## messagesテーブル
  | Column  | Type       | Options                        |
  | ------- | ---------- | ------------------------------ |
  | content | string     |                                |
  | user    | references | null: false, foreign_key: true |
  | room    | references | null: false, foreign_key: true |

  ## Association

-belongs_to :room
-belongs_to :user
