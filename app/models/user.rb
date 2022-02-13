class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i

         validates :nickname,presence: true
         validates :password, format: { with: VALID_PASSWORD_REGEX }

  #他テーブルとのアソシエーション
  has_many :talks, dependent: :destroy
  has_many :favorites, dependent: :destroy

  #いいねしているか判断するメソッド
  def already_favorited?(talk)
    self.favorites.exists?(talk_id: talk.id)
  end
end
