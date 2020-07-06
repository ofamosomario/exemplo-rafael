class Physician < ActiveRecord::Base

  has_many :appoiments
  has_many :patients, through: :appoiments

end
