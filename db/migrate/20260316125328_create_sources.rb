class CreateSources < ActiveRecord::Migration[8.0]
  def change
    create_table :sources do |t|
      t.string :name, null: false
      t.string :abbreviation
      t.date :published_date
      t.text :notes

      t.timestamps
    end
  end
end
