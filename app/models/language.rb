class Language < ApplicationRecord
    validates :name, presence: true
    validates :key, presence: true
end
