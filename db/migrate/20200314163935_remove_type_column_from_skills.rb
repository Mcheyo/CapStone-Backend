class RemoveTypeColumnFromSkills < ActiveRecord::Migration[6.0]
  def change
    remove_column :skills, :type , :string
  end
end
