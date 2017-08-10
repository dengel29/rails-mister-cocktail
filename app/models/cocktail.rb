class Cocktail < ApplicationRecord
  has_many :ingredient
  has_many :dose
end
