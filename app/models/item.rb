class Item < ActiveRecord::Base
  belongs_to :version
  validates_presence_of :version_id, :title, :price
end
