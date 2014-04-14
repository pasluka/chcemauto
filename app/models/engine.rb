class Engine < ActiveRecord::Base
  belongs_to :model

  validates :title, presence: true
  validates :model, presence: true
  validates :cylinders, presence: true
  validates :volume, presence: true
  validates :power, presence: true
  validates :powerin, presence: true
  validates :torque, presence: true
  validates :torquein, presence: true
  validates :accel, presence: true
  validates :consucity, presence: true
  validates :consuextra, presence: true
  validates :counsucomb, presence: true

end
