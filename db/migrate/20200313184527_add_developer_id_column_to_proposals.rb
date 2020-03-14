class AddDeveloperIdColumnToProposals < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :developer_id, :integer
  end
end
