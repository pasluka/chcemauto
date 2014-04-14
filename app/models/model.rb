class Model < ActiveRecord::Base
  belongs_to :brand
  has_many :engines
  validates :title, presence: true
  validates :bodystyle, presence: true
  validates :brand, presence: true

end
