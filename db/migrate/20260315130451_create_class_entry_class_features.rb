class CreateClassEntryClassFeatures < ActiveRecord::Migration[8.0]
  def change
    create_table :class_entry_class_features do |t|
      t.integer :level, default: 1
      t.references :class_feature, null: false, foreign_key: true
      t.references :class_entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
