class ClassEntry::ClassFeatureJoin < ApplicationRecord
    belongs_to :class_entry
    belongs_to :class_feature
end
