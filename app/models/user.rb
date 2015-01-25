class User < ActiveRecord::Base
  has_many :friends, dependent: :destroy
  has_many :friends_from, foreign_key: :to_user_id, class: Friend
  has_many :books, dependent: :destroy

  has_many :friend_users, through: :friends, class: User, source: :to_user
  has_many :friend_user_books, through: :friend_users, class: Book, source: :books
end
