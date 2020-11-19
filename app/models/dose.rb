class Dose < ApplicationRecord
  belongs_to :ingredient, :cocktail
  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id } #estabelece relacao entre 
  # ingrediente e coquetel para que ela seja unica, para que nao haja doses a mais, por ex
end


