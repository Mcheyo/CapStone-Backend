class AddColumnToProposals < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :project_id, :integer
  end
end
