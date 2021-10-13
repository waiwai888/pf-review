class Post < ApplicationRecord
  attachment :image
  
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :notifications, dependent: :destroy
  belongs_to :user
  belongs_to :camp_site, optional: true

  #タグ機能
  has_many :post_tags, dependent: :destroy
  # dependent: :destroyを付与し、postが削除されると同時にpostとtagsの関係も削除されるように設定
  has_many :tags, through: :post_tags
  # post_tagsモデル（中間テーブル）を通じてtagsテーブルへアクセス

	validates :body, presence: true
	validates :image, presence: true
  validates :camp_site_id, presence: true

end
