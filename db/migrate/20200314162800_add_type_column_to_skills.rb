class AddTypeColumnToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :type, :string
  end
end
