class CreateUserAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :user_achievements do |t|
      t.boolean :is_awarded
      t.timestamp :date_awarded
      t.references :user, foreign_key: true
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
