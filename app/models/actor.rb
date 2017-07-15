class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    role = characters.pluck :name
    show_name = shows.pluck :name
    role.zip(show_name).map { |ele| ele.join(" - ") }
    # "#{characters.name} - #{self.shows.name}"
  end
end
