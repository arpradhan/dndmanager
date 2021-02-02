class Race < ApplicationRecord
    validates :key, presence: true
    validates :name, presence: true
    has_many :characters
end
