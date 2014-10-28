class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :descriptor

      t.timestamps
    end
  end
end
