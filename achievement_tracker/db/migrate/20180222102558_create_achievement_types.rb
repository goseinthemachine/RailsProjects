class CreateAchievementTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :achievement_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
