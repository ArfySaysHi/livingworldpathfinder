class ClassFeature < ApplicationRecord
    has_many :class_entry_class_features, class_name: "ClassEntry::ClassFeature", dependent: :destroy
    has_many :class_entries, through: :class_entry_class_features
end
