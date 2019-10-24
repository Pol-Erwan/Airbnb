class Dog < ApplicationRecord
has_many :dogsitters
has_many :strolls
has_many :cities
end
