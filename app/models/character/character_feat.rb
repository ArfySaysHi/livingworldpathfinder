class Character::CharacterFeat < ApplicationRecord
  self.table_name = "character_feats"

  belongs_to :character
  belongs_to :feat
end
