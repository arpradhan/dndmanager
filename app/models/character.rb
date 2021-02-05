class Character < ApplicationRecord
    validates :name, presence: true
    belongs_to :race
    belongs_to :subrace
end
