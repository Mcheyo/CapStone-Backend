class CreateUserSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :user_skills do |t|
      t.integer :skill_id
      t.integer :developer_id

      t.timestamps
    end
  end
end
