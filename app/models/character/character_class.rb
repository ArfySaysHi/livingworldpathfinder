class Character::CharacterClass < ApplicationRecord
  self.table_name = "character_classes"

  belongs_to :character
  belongs_to :class_entry
end
