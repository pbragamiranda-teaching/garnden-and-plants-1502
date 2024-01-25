class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy # .plants
  
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
