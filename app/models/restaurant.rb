class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, uniqueness: true, presence: true # Only one same name, name mandatory
  validates :address, presence: true # Address field mandatory
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end

