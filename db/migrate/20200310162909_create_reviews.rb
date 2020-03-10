class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :project_id
      t.integer :developer_id
      t.integer :client_id
      t.string :content

      t.timestamps
    end
  end
end
