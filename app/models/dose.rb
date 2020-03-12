class Dose < ApplicationRecord
  belongs_to :cocktail #created thanks to the reference in the tables
  belongs_to :ingredient #created thanks to the reference in the tables
  validates :description, presence: true
  validates :cocktail, uniqueness: {scope: :ingredient}
  # validates :cocktail_id(in parametized url), uniqueness: {scope: :ingredient_id(in association)}
end
