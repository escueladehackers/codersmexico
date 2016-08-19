class CreateAcquiredSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :acquired_skills do |t|
      t.belongs_to :user, index: true
      t.belongs_to :skill, index: true
      t.string :time_of_experience
      t.string :level_of_experience
      t.text :description

      t.timestamps
    end
  end
end
