class Character::CharacterTrait < ApplicationRecord
  self.table_name = "character_traits"

  belongs_to :character
  belongs_to :trait
end
