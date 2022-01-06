class Talk < ApplicationRecord
  # アクティブハッシュで定義されているmoduleをモデルに取り込む
  extend ActiveHash::Associations::ActiveRecordExtensions


  #アソシエーション
  #他テーブルとのアソシエーション
  belongs_to :user
  has_many :favorites
  
  # アクティブハッシュとのアソシエーション
  belongs_to :category


end
