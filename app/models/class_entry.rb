class ClassEntry < ApplicationRecord
    has_many :character_classes, class_name: "Character::CharacterClass", dependent: :destroy
    has_many :characters, through: :character_classes
    has_many :class_entry_class_features, dependent: :destroy
    has_many :class_features, through: :class_entry_class_features
end
