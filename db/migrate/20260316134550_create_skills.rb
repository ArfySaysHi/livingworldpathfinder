class CreateSkills < ActiveRecord::Migration[8.0]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.text :description
      t.integer :rank
      t.references :character, null: false, foreign_key: true
      t.references :ability_score, null: false, foreign_key: true

      t.timestamps
    end
  end
end
