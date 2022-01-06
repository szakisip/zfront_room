class Talk < ApplicationRecord
  # アクティブハッシュで定義されているmoduleをモデルに取り込む
  extend ActiveHash::Associations::ActiveRecordExtensions


  #アソシエーション
  #他テーブルとのアソシエーション
  belongs_to :user
  has_many :favorites
  
  # アクティブハッシュとのアソシエーション
  belongs_to :category


  # def favorited?(user)
  #   favorites.where(user_id: user.id).exists?
  # end

end
