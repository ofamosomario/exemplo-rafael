class Patient < ActiveRecord::Base

  has_many :appoiments
  has_many :physicians, through: :appoiments

end
