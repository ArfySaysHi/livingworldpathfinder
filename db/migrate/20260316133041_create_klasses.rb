class CreateKlasses < ActiveRecord::Migration[8.0]
  def change
    create_table :klasses do |t|
      t.string :name, null: false
      t.string :hit_die
      t.integer :skill_points
      t.string :base_attack_progression
      t.string :caster_type
      t.references :source, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
