class CreateCharacterStatblocks < ActiveRecord::Migration[8.0]
  def change
    create_table :character_statblocks do |t|
      t.integer :str, default: 10
      t.integer :dex, default: 10
      t.integer :con, default: 10
      t.integer :int, default: 10
      t.integer :wis, default: 10
      t.integer :cha, default: 10
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
