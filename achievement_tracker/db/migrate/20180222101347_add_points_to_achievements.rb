class AddPointsToAchievements < ActiveRecord::Migration[5.1]
  def change
    add_column :achievements, :point_value, :integer
  end
end
