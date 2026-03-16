class CreateClassLevels < ActiveRecord::Migration[8.0]
  def change
    create_table :class_levels do |t|
      t.references :klass, null: false, foreign_key: true
      t.integer :level, null: false
      t.decimal :bab, null: false, precision: 4, scale: 2
      t.decimal :fort, null: false, precision: 4, scale: 2
      t.decimal :ref, null: false, precision: 4, scale: 2
      t.decimal :will, null: false, precision: 4, scale: 2
      t.integer :hit_die_increase

      t.timestamps
    end

    add_index :class_levels, [:klass_id, :level], unique: true
  end
end
