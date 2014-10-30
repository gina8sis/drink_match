class CreatJoinTableDrinksOccasions < ActiveRecord::Migration
  def change
    create_join_table :drinks, :occasions do |t|
    end
  end
end
