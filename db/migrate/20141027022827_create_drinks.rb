class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.text :recipe
      t.string :color
      t.integer :strength
      t.integer :risk

      t.timestamps
    end
  end
end
