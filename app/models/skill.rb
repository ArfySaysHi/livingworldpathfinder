class Skill < ApplicationRecord
  belongs_to :character
  belongs_to :ability_score
end
