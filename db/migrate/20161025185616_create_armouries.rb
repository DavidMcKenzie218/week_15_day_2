class CreateArmouries < ActiveRecord::Migration
  def change
    create_table :armouries do |t|
      t.string :name
      t.references :hero, index: true, foreign_key: true
      t.references :weapon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
