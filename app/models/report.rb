class Report < ApplicationRecord
  has_many :user_reports
  has_many :users, :through => :user_reports
  validates :image,   presence: true
  validates :body, length: { maximum: 32 }
end
