class CreateFeats < ActiveRecord::Migration[8.0]
  def change
    create_table :feats do |t|
      t.string :name, null: false
      t.text :description
      t.references :source, null: false, foreign_key: true

      t.timestamps
    end
  end
end
