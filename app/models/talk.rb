class Talk < ApplicationRecord
  # アクティブハッシュで定義されているmoduleをモデルに取り込む
  extend ActiveHash::Associations::ActiveRecordExtensions


  #アソシエーション
  #他テーブルとのアソシエーション
  belongs_to :user
  has_many :favorites, dependent: :destroy
  
  # アクティブハッシュとのアソシエーション
  belongs_to :category

  with_options presence: true do
    validates :title
    validates :talk_text
  end


  # def favorited?(user)
  #   favorites.where(user_id: user.id).exists?
  # end

end
