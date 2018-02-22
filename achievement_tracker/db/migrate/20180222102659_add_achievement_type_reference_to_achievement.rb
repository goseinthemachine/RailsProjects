class AddAchievementTypeReferenceToAchievement < ActiveRecord::Migration[5.1]
  def change
    add_reference :achievements, :achievement_type, foreign_key: true
  end
end
