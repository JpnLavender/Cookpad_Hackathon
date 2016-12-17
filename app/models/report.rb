class Report < ApplicationRecord
  has_many :user_reports
  has_many :users, :through => :user_reports
  has_many :recipe_reports
  has_many :recipes, :through => :recipe_reports
  validates :image,   presence: true
  validates :body, length: { maximum: 32 }

  mount_uploader :image, ImageUploader
end
