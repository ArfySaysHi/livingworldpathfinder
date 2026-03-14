class ClassEntry < ApplicationRecord
    has_many :character_classes, class_name: "Character::CharacterClass", dependent: :destroy
    has_many :characters, through: :character_classes
end
