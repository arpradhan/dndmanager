class Race < ApplicationRecord
    validates :key, presence: true
    validates :name, presence: true
    has_many :characters
    has_many :subraces
    has_many :languages_races
    has_many :languages, through: :languages_races
end
