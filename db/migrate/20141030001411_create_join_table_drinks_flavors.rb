class CreateJoinTableDrinksFlavors < ActiveRecord::Migration
  def change
        create_join_table :drinks, :flavors do |t|

    end
  end
end
