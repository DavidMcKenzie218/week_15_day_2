class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.references :hero, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
