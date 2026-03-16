class CreateAbilityScores < ActiveRecord::Migration[8.0]
  def change
    create_table :ability_scores do |t|
      t.string :code, null: false, limit: 3
      t.string :name, null: false

      t.timestamps
    end
  end
end
