require "test_helper"

class RaceUpdateLanguagesTest < ActiveSupport::TestCase
  def setup
    @race = Race.create(name: "Dwarf", key: "dwarf")
    Language.create(name: "Common", key: "common")
    Language.create(name: "Dwarvish", key: "dwarvish")
    Language.create(name: "Elvish", key: "elvish")
  end

  test "it adds languages" do
    languages = Language.where(key: "common")
    @race.update_languages(languages)
    assert languages.size == 1
    assert languages[0].key == "common"
  end

  test "it keeps languages" do
    languages = Language.where(key: "common")
    @race.update_languages(languages)

    @race.update_languages(languages)
    assert @race.languages.size == 1
    assert @race.languages[0].key == "common"
  end

  test "it removes languages" do
    @race.update_languages(Language.where(key: "common"))

    languages = Language.where(key: "giant")
    @race.update_languages(languages)
    assert @race.languages.size == 0
    assert Language.where(key: "common").size == 1
  end

  test "mixed cases" do
    @race.update_languages(Language.where(key: "common"))
    languages = Language.where(key: ["dwarvish", "elvish"])
    @race.update_languages(languages)
    assert @race.languages.size == 2
    assert @race.languages == Language.where(key: ["dwarvish", "elvish"])
  end
end
