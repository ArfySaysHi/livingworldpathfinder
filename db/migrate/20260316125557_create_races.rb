class CreateRaces < ActiveRecord::Migration[8.0]
  def change
    create_table :races do |t|
      t.string :name, null: false
      t.string :size
      t.integer :base_speed
      t.references :source, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
