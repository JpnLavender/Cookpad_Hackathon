class Recipe < ApplicationRecord
  has_many :recipe_materials
  has_many :materials, :through => :recipe_materials
  mount_uploader :image, ImageUploader
  enum status: { men: 0, woman: 1 }
end
