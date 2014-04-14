class Version < ActiveRecord::Base
  belongs_to :model
  belongs_to :engine
  belongs_to :brand

  validates :title, presence: true
  validates :price, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :engine, presence: true
end
