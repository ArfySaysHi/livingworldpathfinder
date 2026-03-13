class Character < ApplicationRecord
  belongs_to :user
  has_one :statblock, class_name: "Character::Statblock", dependent: :destroy
end
