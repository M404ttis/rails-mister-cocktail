class Ingredient < ApplicationRecord
    has_many :doses

    # belongs_to :cocktail
    # You can’t delete an ingredient if it is used by at least one cocktail
    validates :name, presence: true
    validates :name, uniqueness: true
end
