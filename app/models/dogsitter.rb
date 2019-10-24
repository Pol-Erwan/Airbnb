class Dogsitter < ApplicationRecord
  has_many :dogs
  has_many :strolls
  has_many :cities
end
