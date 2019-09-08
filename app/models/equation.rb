class Equation < ApplicationRecord
    validates :a, numericality: { other_than: 0 }, on: :update
end
