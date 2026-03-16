class CreateClassFeatures < ActiveRecord::Migration[8.0]
  def change
    create_table :class_features do |t|
      t.references :klass, null: false, foreign_key: true
      t.string :name, null: false
      t.text :description
      t.integer :gained_at_level

      t.timestamps
    end
  end
end
