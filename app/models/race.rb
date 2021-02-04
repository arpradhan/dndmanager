class Race < ApplicationRecord
    validates :key, presence: true
    validates :name, presence: true
    has_many :characters
    has_many :subraces
    has_many :languages_races
    has_many :languages, through: :languages_races

    def update_languages(languages)
        languages.each do |language|
            if self.languages.where(id: language.id).size == 0
                self.languages << language
            end
        end

        self.languages.each do |language|
            if languages.where(id: language.id).size == 0
                self.languages.delete(language)
            end
        end
    end
end
