class AddColumnToProjectSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :project_skills, :project_id, :integer
    add_column :project_skills, :skill_id, :integer
  end
end
