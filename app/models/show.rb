class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_many :shows
  belongs_to :network

end
