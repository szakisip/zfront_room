class Favorite < ApplicationRecord

  #アソシエーション
  belongs_to :user
  belongs_to :talk
  
end