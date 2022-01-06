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
  has_many :favorites

end
