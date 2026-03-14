class CreateTraits < ActiveRecord::Migration[8.0]
  def change
    create_table :traits do |t|
      t.string :name, null: false
      t.text :description
      t.string :trait_type

      t.timestamps
    end
  end
end
