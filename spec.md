## Character Creator
1. Choose a Race
    a. (Optional) Choose a subrace
    b. Record ability score increases
    c. Record traits. E.g. starting languages and speed
2. Choose a Class
    a. Record class features
    b. Record proficiencies
    c. Set class level to 1
    d. Set XP to 0
    e. Record hit dice
    f. Set number of hit dice to 1
    g. Set hit points equal highest roll of hit dice
    h. Set hit points maximum equal to highest roll of hit dice
    i. Record proficiency bonus from class table
3. Determine Ability Scores
    a. Generate ability scores
    b. Assign abilities scores to abilities
4. Describe Your Character
    a. Choose background
5. Choose Equipment
    a. Select starting equipment from class and background
    b. Record armor class (AC)

## Character
### Actions
- weapon attack
- cast spell
- roll for initiative
- skill check
- make saving throw
- lose hit points
- gain hit points
- class action


### Attributes
- name
- race
- subrace (optional)
- class
- hit points
- hit points maximum
- speed
- size
- armor_proficiencies
- weapon_proficiencies
- tool_proficiencies
- skill_proficiencies
- saving_throw_proficiencies
- proficiency_bonus
- actions
- attacks_per_action
- spells
- equipment
- class_traits
- race_traits
- resistances
- immunities
- vulnerabilities
- conditions
- armor class (AC)
- known_spells
- prepared_spells
- level_1_spell_slots
- level_1_spell_slots_max
- level_2_spell_slots
- level_2_spell_slots_max
- level_3_spell_slots
- level_3_spell_slots_max
- level_4_spell_slots
- level_4_spell_slots_max
- level_5_spell_slots
- level_5_spell_slots_max



# Race
- ability score increases
- size
- speed
- languages
- subrace
- subrace_options
- race_traits

## Race_Traits
- dwarf_asi = {con: 2}
- dwarf_subraces = ["hill_dwarf", "mountain_dwarf"]
- hill_dwarf_subrace = {asi: {wis: 2}, traits: ["dwarven_toughness"] }
- dwarven_toughness = {hit_point_max_increase: 1, on_level_up: {hit_point_max_increase: 1}"}
- mountain_dwarf_subrace = {asi: {str: 2}, traits: ["dwarven_armor_training"]}
- dwarven_armor_training = {armor_proficiencies: ["light_armor", "medium_armor"]}
- darkvision = {description: "You can see in dim light within 60 ft as if it were bright light, and in darkness as if it were dim light"}
- dwarven_resilience = {saving_throw_advantages: ["poison"], resistances: ["poison"] }
- dwarven_combat_training = {weapon_proficencies: ["battleaxe", "handaxe", "light_hammer", "warhammer"]}
- elf_asi = {dex: 2}
- keen_senses = {skill_proficiencies: ["perception"]}
- fey_ancestry = {description: "You have advantage on saving throws against being charmed, and magic can't put you to sleep.", saving_throw_advantages: ["charmed"], immunities: ["sleep"]}
- trance = {desription: "Elves don't sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day."}
- high_elf_subrace = {asi: {int: 1}, traits: ["elf_weapon_training", "cantrip" "extra_language"]}
- elf_weapon_training = {weapon_proficiencies: ["longsword", "shortsword", "shortbow", "longbow"]}
- cantrip = {choices: ["wizard_cantrip"], cantrip_spellcasting_ability: "int"}
- extra_language = {choices: ["language"]}
- wood_elf_subrace = {asi: {wis: 2}, traits: ["elf_weapon_training", "fleet_of_foot", "mask_of_the_wild"]}
- fleet_of_foot = {speed: 35}
- mask_of_the_wild = {description: "You can attempt to hide when lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena"}
- dark_elf_asi = {cha: 1}
- superior_darkvision = {description: "Your darkvision has a radius of 120 ft."}
- sunlight_sensitivity = {description: You have disadvantage on attack rolls and on Wisdom (Perception) checks that rely on sight in direct sunlight"}
- drow_magic = {spells: [{ name: "dancing_lights", required_level: 0, spellcasting_ability: "cha" }, {name: "faerie_fire", cost: "long_rest", required_level: 3, spellcasting_ability: "cha"}, {name: "darkness", cost: "long_rest", "required_level": 5, spellcasting_ability: "cha"}]}
- drow_weapon_training: {weapon_proficiencies: ["rapiers", "shortswords", "hand_crossbows"]}

## Classes
- name
- description
- hit_die
- saving_throw_proficiencies
- armor_proficiencies
- weapon_proficiencies
- tool_proficiencies
- skill_proficiencies
- hit_points_at_1st_level = {base: int, modifier: "con"}
- hit_points_at_higher_levels = {hit_dice: string, average: int, modifier: "con"}
- equipment_choices

## Class Traits
- resource
- required_level

### Data
- rage 
- unarmored_defense
- reckless_attack
- danger_sense
- primal_path: { subclasses: ["path_of_the_berserker", "path_of_the_totem_warrior"]}
- ability_score_improvement
- extra_attack
- fast_movement
- feral_instinct
- brutal_critical
- relentless_rage
- persistent_rage
- indomitable_might
- primal_champion
- path_of_the_berserker: {traits: ["frenzy", "mindless_rage" ,"intimidating_presence", "retaliation"]}
- frenzy
- mindless_rage
- intimidating_presence
- retaliation
- path_of_the_totem_warrior: {traits: ["spirit_seeker", "totem_spirit", "aspect_of_the_beast", "spirit_walker", "totemic_attunement"]}
- spirit_seeker
- totem_spirit: {choices: ["totem_spirit_bear", "totem_spirit_eagle", "totem_spirit_wolf"]}
- totem_spirit_bear
- totem_spirit_eagle
- totem_spriit_wolf
- aspect_of_the_beast: {choices: ["aspect_of_the_beast_bear", "aspect_of_the_beast_eagle", "aspect_of_the_beast_wolf"]}
- aspect_of_the_beast_bear
- aspect_of_the_beast_eagle
- aspect_of_the_beast_wolf
- spirit_walker
- totemic_attunenment: {choices: ["totemic_attunement_bear", "totemic_attunement_eagle", "totemic_attunement_wolf"]}
- totemic_attunement_bear
- totemic_attunement_eagle
- totemic_attunement_wolf


## Level Up
When level up happens, check:
- check class for additional features
- gain a hit die
- add hit die + con modifier to hp maxium
- if con mod increases by 1, hp max increases by 1 for each level
- check character advancement table for profincieny bonus
- check race for additional features



If character chooses race with trait that requires a choice, create a record in the character_choice table:
is_chosen = false
object_id = race_trait_id
object_type = race_trait
