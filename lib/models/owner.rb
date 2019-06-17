class Owner < ActiveRecord::Base

  has_many :leashes
  has_many :dogs, through: :leashes


end