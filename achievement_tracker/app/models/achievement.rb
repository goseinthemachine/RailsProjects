class Achievement < ApplicationRecord
  has_many :user_achievements
  belongs_to :achievement_type
end
