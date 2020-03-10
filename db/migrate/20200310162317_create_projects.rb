class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :client_id
      t.integer :developer_id
      t.string :status

      t.timestamps
    end
  end
end
