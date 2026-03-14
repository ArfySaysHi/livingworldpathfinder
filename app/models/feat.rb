class Feat < ApplicationRecord
    has_many :character_feats, class_name: "Character::CharacterFeat", dependent: :destroy
    has_many :characters, through: :character_feats
end
