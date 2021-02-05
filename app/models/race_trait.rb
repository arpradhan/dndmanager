class RaceTrait < ApplicationRecord
    belongs_to :race
    before_validation :normalize_trait

    private
    def normalize_trait
        self.trait = trait.strip
    end
end
