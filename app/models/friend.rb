class Friend < ActiveRecord::Base
  belongs_to :user
  belongs_to :to_user, foreign_key: :to_user_id, class: User
end
