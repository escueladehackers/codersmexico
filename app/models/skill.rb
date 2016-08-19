class Skill < ApplicationRecord
  mount_uploader :image, SkillAvatarUploader

  has_many :acquired_skills
  has_many :users, through: :acquired_skills

end
