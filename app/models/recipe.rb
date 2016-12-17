class Recipe < ApplicationRecord
  has_many :recipe_materials
  has_many :materials, :through => :recipe_materials
  has_many :user_recipes
  has_many :users, :through => :user_recipes
  has_many :recipe_reports
  has_many :reports, :through => :recipe_reports

  validates :title, length: { maximum: 20 }
  validates :image,   presence: true

  mount_uploader :image, ImageUploader
  enum status: { men: 0, woman: 1 }
  class << self
    def search(word)
      self.where("title like '%#{word}%'")
    end
  end
end
