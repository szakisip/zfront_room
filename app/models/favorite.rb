class Favorite < ApplicationRecord

  #アソシエーション
  belongs_to :user
  belongs_to :talk
  validates_uniqueness_of :talk_id, scope: :user_id
end
