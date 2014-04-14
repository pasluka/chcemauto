class Brand < ActiveRecord::Base
  has_many :models

  validates :title, presence: true
end
