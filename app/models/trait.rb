class Trait < ApplicationRecord
    has_many :character_traits, class_name: "Character::CharacterTrait", dependent: :destroy
    has_many :characters, through: :character_traits
end
