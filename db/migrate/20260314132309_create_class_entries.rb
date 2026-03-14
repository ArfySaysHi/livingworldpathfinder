class CreateClassEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :class_entries do |t|
      t.string :name, null: false
      t.integer :hit_die, default: 10
      t.integer :skills_per_level, default: 4
      t.integer :fort_save, default: 0
      t.integer :ref_save, default: 0
      t.integer :will_save, default: 0
      t.integer :bab, default: 100

      t.timestamps
    end
  end
end
