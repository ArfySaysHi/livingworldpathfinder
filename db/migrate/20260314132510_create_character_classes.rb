class CreateCharacterClasses < ActiveRecord::Migration[8.0]
  def change
    create_table :character_classes do |t|
      t.references :character, null: false, foreign_key: true
      t.references :class_entry, null: false, foreign_key: true
      t.integer :level, null: false

      t.timestamps
    end
  end
end
