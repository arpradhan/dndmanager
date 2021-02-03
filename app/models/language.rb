class Language < ApplicationRecord
    validates :name, presence: true
    validates :key, presence: true
    has_many :langauges_races
    has_many :races, through: :languages_races
end
