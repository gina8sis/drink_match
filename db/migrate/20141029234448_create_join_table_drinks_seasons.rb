class CreateJoinTableDrinksSeasons < ActiveRecord::Migration
  def change
    create_join_table :drinks, :seasons do |t|
    end
  end
end
