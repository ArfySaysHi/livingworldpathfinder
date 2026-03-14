class Character < ApplicationRecord
  belongs_to :user
  has_one :statblock, class_name: "Character::Statblock", dependent: :destroy
  has_many :character_feats, class_name: "Character::CharacterFeat", dependent: :destroy
  has_many :feats, through: :character_feats
  has_many :character_traits, class_name: "Character::CharacterTrait", dependent: :destroy
  has_many :traits, through: :character_traits
end
