class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, uniqueness: true, presence: true # Only one same name, name mandatory
  validates :address, presence: true # Address field mandatory
end
