class ClassFeature < ApplicationRecord
    has_many :class_entry_class_features, dependent: :destroy
    has_many :class_entries, through: :class_entry_class_features
end
